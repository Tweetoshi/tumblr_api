import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';

void main() {
  late Map<String, dynamic> testPostJson;

  setUpAll(() async {
    // Read the example JSON file
    final file = File('test/src/api/data/tumblr_post_example.json');
    final jsonString = await file.readAsString();
    testPostJson = json.decode(jsonString);
  });

  group('TumblrPost', () {
    test('fromJson correctly parses Tumblr post data', () {
      final post = TumblrPost.fromJson(testPostJson);

      // Verify basic properties
      expect(post.id, '12345');
      expect(post.blog.name, 'outofcontextdiscord');
      expect(post.blog.title, 'Discord, Minus Context');
      expect(post.timestamp, 1742388058);
      expect(post.postUrl,
          'https://outofcontextdiscord.tumblr.com/post/778450300658974720/submitted-by-local-robotgirlthing');

      // Verify content blocks
      expect(post.content.length, 2);
      expect(post.content[0], isA<ImageContentBlock>());

      expect(post.content[1], isA<TextContentBlock>());
      expect((post.content[1] as TextContentBlock).text,
          'submitted by @local-robotgirlthing');

      // Verify tags
      expect(post.tags?.length, 4);
      expect(post.tags?.contains('discord'), true);

      // Verify summary
      expect(post.summary, 'submitted by @local-robotgirlthing');

      // Verify default values
      expect(post.reblogKey, null);
    });

    test('toJson serializes Tumblr post correctly', () {
      final post = TumblrPost.fromJson(testPostJson);
      final serialized = post.toJson();

      // Test round-trip serialization
      expect(serialized['id'], '12345');
      expect(serialized['blog'] is TumblrBlog, true);
      expect(serialized['blog']?.name, 'outofcontextdiscord');
      expect(serialized['timestamp'], 1742388058);
      expect(serialized['tags'][1], 'discord');
    });

    test('handles optional fields', () {
      var jsonWithoutOptionals = Map<String, dynamic>.from(testPostJson);
      // Remove optional fields
      jsonWithoutOptionals.remove('tags');
      jsonWithoutOptionals.remove('summary');
      jsonWithoutOptionals.remove('layout');
      jsonWithoutOptionals.remove('trail');

      final post = TumblrPost.fromJson(jsonWithoutOptionals);
      expect(post.tags, isNull);
      expect(post.summary, isNull);
      expect(post.layout, isNull);
      expect(post.trail, isNull);
    });
  });

  group('PostDetails', () {
    test('fromJson correctly parses PostDetails', () {
      final postDetailsJson = {
        'id': testPostJson['id'],
        'timestamp': testPostJson['timestamp'],
        'is_commercial': false,
        'is_paywalled': false
      };

      final details = PostDetails.fromJson(postDetailsJson);

      expect(details.id, '12345');
      expect(details.timestamp, 1742388058);
      expect(details.isCommercial, false);
      expect(details.isPaywalled, false);
    });

    test('toJson serializes PostDetails correctly', () {
      final postDetailsJson = {
        'id': testPostJson['id'],
        'timestamp': testPostJson['timestamp'],
        'is_commercial': false,
        'is_paywalled': false
      };

      final details = PostDetails.fromJson(postDetailsJson);
      final serialized = details.toJson();

      expect(serialized['id'], '12345');
      expect(serialized['timestamp'], 1742388058);
      expect(serialized['is_commercial'], false);
    });
  });
}
