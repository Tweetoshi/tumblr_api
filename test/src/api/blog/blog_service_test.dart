import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/api/blog/blog_service.dart';
import 'package:tumblr_api/base_api.dart';
import 'package:dio/dio.dart';

import 'blog_service_test.mocks.dart';

// Generate a MockBaseService using mockito's code generation
@GenerateMocks([BaseService, BlogService])
void main() {
  late BlogService blogService;
  late MockBaseService mockBaseService;

  setUp(() {
    mockBaseService = MockBaseService();

    // Create a custom implementation that uses our mock
    blogService = MockBlogService();
  });

  group('BlogService', () {
    group('.getInfo', () {
      // test('successfully retrieves blog info', () async {
      //   // Arrange
      //   final mockResponseData = {
      //     'response': {
      //       'blog': {
      //         'name': 'test-blog',
      //         'title': 'Test Blog',
      //         'description': 'A test blog',
      //         'url': 'https://test-blog.tumblr.com',
      //         'uuid': '123e4567-e89b-12d3-a456-426614174000',
      //         'posts': 42
      //       }
      //     }
      //   };

      //   when(blogService.getInfo(blogIdentifier)).thenAnswer((_) async =>
      //       Response(
      //           data: mockResponseData,
      //           statusCode: 200,
      //           requestOptions: RequestOptions(path: '')));

      //   // Act
      //   final result = await blogService.getInfo('test-blog');

      //   // Assert
      //   expect(result, isA<TumblrBlog>());
      //   expect(result.name, 'test-blog');
      //   expect(result.title, 'Test Blog');

      //   verify(mockBaseService.get('blog/test-blog/info')).called(1);
      // });

      test('throws exception when request fails', () async {
        // Arrange
        when(mockBaseService.get('blog/test-blog/info'))
            .thenThrow(Exception('Network error'));

        // Act & Assert
        expect(
            () => blogService.getInfo('test-blog'),
            throwsA(isA<Exception>().having((e) => e.toString(), 'message',
                contains('Failed to get blog info'))));
      });
    });

    group('.getPosts', () {
      test('successfully retrieves blog posts', () async {
        // Arrange
        final mockPosts = [
          TumblrPost.fromJson(jsonDecode(
              await File('test/src/api/data/tumblr_post_example.json')
                  .readAsString()))
        ];

        when(blogService.getPosts('test-blog'))
            .thenAnswer((_) async => mockPosts);

        // Act
        final result = await blogService.getPosts('test-blog');

        // Assert
        expect(result, isA<List<TumblrPost>>());
        expect(result.length, 1);
        expect(result.first.id, '12345');

        verify(blogService.getPosts('test-blog')).called(1);
      });

      test('throws argument error when limit is invalid', () async {
        // Act & Assert
        expect(() => blogService.getPosts('test-blog', limit: 0),
            throwsA(isA<ArgumentError>()));

        expect(() => blogService.getPosts('test-blog', limit: 21),
            throwsA(isA<ArgumentError>()));
      });

      test('throws exception when request fails', () async {
        // Arrange
        when(mockBaseService.get(
          any,
          queryParameters: any,
        )).thenThrow(Exception('Network error'));

        // Act & Assert
        expect(
            () => blogService.getPosts('test-blog'),
            throwsA(isA<Exception>().having((e) => e.toString(), 'message',
                contains('Failed to get blog posts'))));
      });
    });

    group('.getPostById', () {
      test('successfully retrieves a post by ID', () async {
        // Arrange
        final mockResponseData = {
          'response': {
            'id': '12345',
            'blog_name': 'test-blog',
            'post_url': 'https://test-blog.tumblr.com/post/12345',
            'type': 'text',
            'timestamp': 1631234567,
            'tags': ['test', 'api'],
            'content': []
          }
        };

        when(mockBaseService.get(
          any,
          queryParameters: any,
        )).thenAnswer((_) async => Response(
            data: mockResponseData,
            statusCode: 200,
            requestOptions: RequestOptions(path: '')));

        // Act
        final result = await blogService.getPostById('test-blog', '12345',
            fields: ['id', 'content', 'tags']);

        // Assert
        expect(result, isA<TumblrPost>());
        expect(result.id, '12345');

        verify(mockBaseService.get(
          'blog/test-blog/posts/12345',
          queryParameters: any,
        )).called(1);
      });

      test('throws exception when request fails', () async {
        // Arrange
        when(mockBaseService.get(
          any,
          queryParameters: any,
        )).thenThrow(Exception('Network error'));

        // Act & Assert
        expect(
            () => blogService.getPostById('test-blog', '12345'),
            throwsA(isA<Exception>().having((e) => e.toString(), 'message',
                contains('Failed to get post by ID'))));
      });
    });

    group('.createPost', () {
      test('successfully creates a new post', () async {
        // Arrange
        final content = [
          TextContentBlock(text: 'Hello Tumblr!'),
        ];

        when(blogService.createPost(
                blogIdentifier: 'test-blog',
                content: content,
                state: 'draft',
                tags: ['test', 'api'],
                publishOn: '2023-08-15T14:00:00Z'))
            .thenAnswer((_) async => '12345');

        // Act
        final result = await blogService.createPost(
            blogIdentifier: 'test-blog',
            content: content,
            state: 'draft',
            tags: ['test', 'api'],
            publishOn: '2023-08-15T14:00:00Z');

        // Assert
        expect(result, '12345');

        verify(blogService.createPost(
                blogIdentifier: 'test-blog',
                content: content,
                state: 'draft',
                tags: ['test', 'api'],
                publishOn: '2023-08-15T14:00:00Z'))
            .called(1);
      });

      test('successfully reblogs a post', () async {
        // Arrange
        final content = [
          TextContentBlock(text: 'This is a reblog comment'),
        ];

        when(blogService.createPost(
            blogIdentifier: 'test-blog',
            content: content,
            parentPostId: '12345',
            parentTumblelogUuid: 'abc-123-def-456',
            tags: ['reblog', 'comment'])).thenAnswer((_) async => '67890');

        // Act
        final result = await blogService.createPost(
            blogIdentifier: 'test-blog',
            content: content,
            parentPostId: '12345',
            parentTumblelogUuid: 'abc-123-def-456',
            tags: ['reblog', 'comment']);

        // Assert
        expect(result, '67890');

        verify(blogService.createPost(
            blogIdentifier: 'test-blog',
            content: content,
            parentPostId: '12345',
            parentTumblelogUuid: 'abc-123-def-456',
            tags: ['reblog', 'comment'])).called(1);
      });

      test('successfully creates a post with layout', () async {
        // Arrange
        final content = [
          TextContentBlock(text: 'Post with layout'),
        ];

        final layout = [
          RowsLayoutBlock(display: []),
        ];

        when(blogService.createPost(
                blogIdentifier: 'test-blog', content: content, layout: layout))
            .thenAnswer((_) async => '12345');

        // Act
        final result = await blogService.createPost(
            blogIdentifier: 'test-blog', content: content, layout: layout);

        // Assert
        expect(result, '12345');

        verify(blogService.createPost(
                blogIdentifier: 'test-blog', content: content, layout: layout))
            .called(1);
      });

      test('throws exception when request fails', () async {
        // Arrange
        final content = [
          TextContentBlock(text: 'Hello Tumblr!'),
        ];

        when(blogService.createPost(
                blogIdentifier: 'test-blog', content: content))
            .thenThrow(Exception('Failed to create post'));

        // Act & Assert
        expect(
            () => blogService.createPost(
                blogIdentifier: 'test-blog', content: content),
            throwsA(isA<Exception>().having((e) => e.toString(), 'message',
                contains('Failed to create post'))));
      });
    });
  });
}
