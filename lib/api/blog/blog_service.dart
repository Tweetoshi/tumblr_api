import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/notes_model.dart';
import 'package:tumblr_api/api/models/notification_response.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class BlogService {
  factory BlogService({required String accessToken}) =>
      _BlogService(accessToken: accessToken);

  /// Retrieves general information about a blog
  /// See: https://www.tumblr.com/docs/en/api/v2#blog-methods
  Future<TumblrBlog> getInfo(String blogIdentifier);

  /// Retrieves published posts for a blog
  /// Optional parameters:
  /// - type: The type of posts to return (text, photo, quote, link, chat, audio, video, answer)
  /// - tag: Limits the response to posts with the specified tag
  /// - limit: The number of posts to return (1-20, default 20)
  /// - offset: Post number to start at (default 0)
  /// - filter: Specifies post format to return (html, text, raw)
  Future<List<TumblrPost>> getPosts(
    String blogIdentifier, {
    String? type,
    String? tag,
    int limit = 20,
    int offset = 0,
    String? filter,
  });

  /// Retrieves a single post by its ID using the Neue Post Format
  /// Required parameters:
  /// - blogIdentifier: The blog identifier (name, hostname, or UUID)
  /// - postId: The ID of the post to retrieve
  ///
  /// Optional parameters:
  /// - fields: Fields to include in the response
  Future<TumblrPost> getPostById(
    String blogIdentifier,
    String postId, {
    List<String>? fields,
  });

  /// Creates a new post or reblogs an existing post using the Neue Post Format
  /// Required parameters for creating a new post:
  /// - blogIdentifier: The blog to post to
  /// - content: The content blocks for the post
  ///
  /// Required parameters for reblogging:
  /// - blogIdentifier: The blog to post to
  /// - parentPostId: ID of the post being reblogged
  /// - parentBlogUuid: UUID of the blog being reblogged from
  /// - content: Optional additional content blocks to add
  ///
  /// Optional parameters for both:
  /// - layout: Layout blocks for the post
  /// - state: Post state (published, draft, queue, private)
  /// - tags: Tags to associate with the post
  /// - publishOn: Schedule post at specified date (for queued posts)
  /// - date: Override the post's creation date
  Future<String> createPost({
    required String blogIdentifier,
    required List<ContentBlock> content,
    String? parentPostId,
    String? parentTumblelogUuid,
    String? reblogKey,
    List<LayoutBlock>? layout,
    String state = 'published',
    List<String>? tags,
    String? publishOn,
    String? date,
  });

  /// Retrieves notes for a specific post
  /// Required parameters:
  /// - blogIdentifier: The blog identifier
  /// - postId: The ID of the post to get notes for
  ///
  /// Optional parameters:
  /// - beforeTimestamp: Return notes created before this timestamp
  /// - mode: Response mode (conversation, regular, rollup)
  /// - types: Types of notes to include (like, reblog, reply, etc.)
  /// - limit: Number of notes to return (default 20, max 50)
  Future<NotesResponse> getNotes(
    String blogIdentifier,
    String postId, {
    int? beforeTimestamp,
    NoteMode? mode,
    List<String>? types,
  });

  /// Retrieves a blog's activity feed notifications
  /// Required parameters:
  /// - blogIdentifier: The blog identifier (name, hostname, or UUID)
  ///
  /// Optional parameters:
  /// - types: List of notification types to include
  /// - beforeTime: Return notifications before this timestamp
  /// - cursor: Pagination cursor for subsequent requests
  /// - limit: Number of notifications to return (max 50)
  Future<NotificationResponse> getNotifications(
    String blogIdentifier, {
    List<String>? types,
    int? beforeTime,
    String? cursor,
    int limit = 20,
  });

  /// Blocks a blog
  /// Required parameters:
  /// - blogIdentifier: The identifier of your blog
  /// - blockedBlogIdentifier: The identifier of the blog to block
  ///
  /// See: https://www.tumblr.com/docs/en/api/v2#blocks--block-a-blog
  Future<bool> blockBlog(
    String blogIdentifier,
    String blockedBlogIdentifier,
  );

  /// Retrieves a list of blogs blocked by the specified blog
  /// Required parameters:
  /// - blogIdentifier: The identifier of your blog
  /// 
  /// Optional parameters:
  /// - offset: Result number to start at (default 0)
  /// - limit: Number of results to return (default 20, max 20)
  ///
  /// See: https://www.tumblr.com/docs/en/api/v2#blocks--retrieve-blogs-blocks
  Future<List<TumblrBlog>> getBlocks(
    String blogIdentifier, {
    int offset = 0,
    int limit = 20,
  });

  /// Removes a block on a blog
  /// Required parameters:
  /// - blogIdentifier: The identifier of your blog
  /// - blockedBlogIdentifier: The identifier of the blog to unblock
  ///
  /// See: https://www.tumblr.com/docs/en/api/v2#blocks--remove-a-block
  Future<bool> removeBlock(
    String blogIdentifier,
    String blockedBlogIdentifier,
  );
}

class _BlogService extends BaseService implements BlogService {
  _BlogService({required super.accessToken});

  @override
  Future<TumblrBlog> getInfo(String blogIdentifier) async {
    try {
      final response = await get('blog/$blogIdentifier/info');
      return TumblrBlog.fromJson(
          response.data['response']['blog'] as Map<String, dynamic>);
    } catch (e) {
      throw Exception('Failed to get blog info $e');
    }
  }

  @override
  Future<List<TumblrPost>> getPosts(
    String blogIdentifier, {
    String? type,
    String? tag,
    int limit = 20,
    int offset = 0,
    String? filter,
    bool npf = true,
  }) async {
    try {
      // Validate limit is within allowed range
      if (limit < 1 || limit > 20) {
        throw ArgumentError('Limit must be between 1 and 20');
      }

      final queryParams = <String, dynamic>{
        'limit': limit,
        'offset': offset,
      };

      if (type != null) queryParams['type'] = type;
      if (tag != null) queryParams['tag'] = tag;
      if (filter != null) queryParams['filter'] = filter;
      queryParams['npf'] = npf;

      final response = await get(
        'blog/$blogIdentifier/posts',
        queryParameters: queryParams,
      );
      final posts = response.data['response']['posts'] as List<dynamic>;
      final postsList = posts
          .map((post) => TumblrPost.fromJson(post as Map<String, dynamic>))
          .toList();
      return postsList;
    } catch (e) {
      throw Exception('Failed to get blog posts $e');
    }
  }

  @override
  Future<String> createPost({
    required String blogIdentifier,
    required List<ContentBlock> content,
    String? parentPostId,
    String? parentTumblelogUuid,
    String? reblogKey,
    List<LayoutBlock>? layout,
    String state = 'published',
    List<String>? tags,
    String? publishOn,
    String? date,
  }) async {
    try {
      // Check if there are any image blocks with local file paths
      final hasLocalImages = content.any((block) =>
          block is ImageContentBlock &&
          block.media.isNotEmpty &&
          block.media.first.url.startsWith('file://'));

      if (hasLocalImages) {
        // Create FormData for multipart request
        final formData = FormData();

        // Make a copy of content to modify with identifiers
        final processedContent = <Map<String, dynamic>>[];
        final Map<String, String> filePathToIdentifier = {};
        int imageCounter = 0; // Counter to ensure unique identifiers

        // First pass: Process content and generate identifiers
        for (final block in content) {
          if (block is ImageContentBlock && block.media.isNotEmpty) {
            final media = block.media.first;
            if (media.url.startsWith('file://')) {
              // Generate a simple identifier without timestamp
              final identifier =
                  'img_${DateTime.now().millisecondsSinceEpoch}_${imageCounter++}';
              filePathToIdentifier[media.url] = identifier;

              // Add image block with identifier
              processedContent.add({
                'type': 'image',
                'media': [
                  {
                    'identifier': identifier,
                    'type': _getContentType(media.url),
                  }
                ],
                if (block.altText != null) 'alt_text': block.altText,
              });
            } else {
              // Regular remote URL
              processedContent.add(block.toJson());
            }
          } else {
            // Non-image blocks
            processedContent.add(block.toJson());
          }
        }

        // Prepare the JSON payload
        final Map<String, dynamic> jsonPayload = {
          'content': processedContent,
        };

        // Add optional parameters
        if (layout != null) {
          jsonPayload['layout'] =
              layout.map((block) => block.toJson()).toList();
        }
        if (tags != null && tags.isNotEmpty)
          jsonPayload['tags'] = tags.join(',');
        if (publishOn != null) jsonPayload['publish_on'] = publishOn;
        if (date != null) jsonPayload['date'] = date;
        if (state != 'published') jsonPayload['state'] = state;

        // Handle reblog parameters
        if (parentPostId != null && parentTumblelogUuid != null) {
          jsonPayload['parent_post_id'] = parentPostId;
          jsonPayload['parent_tumblelog_uuid'] = parentTumblelogUuid;
          if (reblogKey != null) jsonPayload['reblog_key'] = reblogKey;
        }

        // Add JSON payload to the form - THIS IS CRITICAL
        formData.fields.add(MapEntry('json', json.encode(jsonPayload)));

        // Add image files with the same identifier used in the JSON content
        for (final entry in filePathToIdentifier.entries) {
          final filePath = entry.key.replaceFirst('file://', '');
          final identifier = entry.value;

          formData.files.add(MapEntry(
            identifier, // Field name MUST match the identifier in JSON
            await MultipartFile.fromFile(
              filePath,
              contentType: MediaType.parse(_getContentType(filePath)),
              filename: identifier + '.' + filePath.split('.').last,
            ),
          ));
        }

        // Send the request with FormData
        final response = await post(
          'blog/$blogIdentifier/posts',
          data: formData,
        );

        if (response.statusCode != 201) {
          throw Exception('Failed to create post: ${response.data}');
        }

        return response.data['response']['id'];
      } else {
        // Standard JSON request for posts without local image uploads
        final contentJson = content.map((block) => block.toJson()).toList();

        // Prepare the request body
        final Map<String, dynamic> body = {
          'content': contentJson,
        };

        // Add optional parameters if present
        if (layout != null) {
          body['layout'] = layout.map((block) => block.toJson()).toList();
        }
        if (tags != null && tags.isNotEmpty) body['tags'] = tags.join(',');
        if (publishOn != null) body['publish_on'] = publishOn;
        if (date != null) body['date'] = date;
        if (state != 'published') body['state'] = state;

        // Handle reblog vs new post
        if (parentPostId != null && parentTumblelogUuid != null) {
          body['parent_post_id'] = parentPostId;
          body['parent_tumblelog_uuid'] = parentTumblelogUuid;
          body['reblog_key'] = reblogKey;
        }

        // Make the POST request
        final response = await post(
          'blog/$blogIdentifier/posts',
          data: body,
        );

        // Parse the response
        final postData = response.data['response'] as Map<String, dynamic>;
        return postData['id'];
      }
    } catch (e) {
      throw Exception('Failed to create post: $e');
    }
  }

  @override
  Future<TumblrPost> getPostById(
    String blogIdentifier,
    String postId, {
    List<String>? fields,
  }) async {
    try {
      final queryParams = <String, dynamic>{};

      // Add fields parameter if provided
      if (fields != null && fields.isNotEmpty) {
        queryParams['fields'] = fields.join(',');
      }

      final response = await get(
        'blog/$blogIdentifier/posts/$postId',
        queryParameters: queryParams,
      );

      final postData = response.data['response'] as Map<String, dynamic>;
      return TumblrPost.fromJson(postData);
    } catch (e) {
      throw Exception('Failed to get post by ID: $e');
    }
  }

  @override
  Future<NotesResponse> getNotes(
    String blogIdentifier,
    String postId, {
    int? beforeTimestamp,
    NoteMode? mode,
    List<String>? types,
  }) async {
    try {
      final queryParams = <String, dynamic>{};

      if (beforeTimestamp != null) {
        queryParams['before_timestamp'] = beforeTimestamp;
      }
      if (mode != null) queryParams['mode'] = mode.name;
      if (types != null && types.isNotEmpty) {
        queryParams['types'] = types.join(',');
      }

      final response = await get(
        'blog/$blogIdentifier/notes',
        queryParameters: {
          'id': postId,
          ...queryParams,
        },
      );

      final responseData = response.data['response'] as Map<String, dynamic>;
      return NotesResponse.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to get notes for post: $e');
    }
  }

  @override
  Future<NotificationResponse> getNotifications(
    String blogIdentifier, {
    List<String>? types,
    int? beforeTime,
    String? cursor,
    int limit = 20,
  }) async {
    try {
      // Validate limit
      if (limit < 1 || limit > 50) {
        throw ArgumentError('Limit must be between 1 and 50');
      }

      final queryParams = <String, dynamic>{
        'limit': limit,
      };

      if (types != null && types.isNotEmpty) {
        queryParams['types'] = types.join(',');
      }
      if (beforeTime != null) queryParams['before_time'] = beforeTime;
      if (cursor != null) queryParams['cursor'] = cursor;

      final response = await get(
        'blog/$blogIdentifier/notifications',
        queryParameters: queryParams,
      );

      final responseData = response.data['response'] as Map<String, dynamic>;
      return NotificationResponse.fromJson(responseData);
    } catch (e) {
      throw Exception('Failed to get notifications: $e');
    }
  }

  @override
  Future<bool> blockBlog(
    String blogIdentifier,
    String blockedBlogIdentifier,
  ) async {
    try {
      final response = await post(
        'blog/$blogIdentifier/blocks',
        data: {'blocked_tumblelog': blockedBlogIdentifier},
      );
      
      return response.statusCode == 201;
    } catch (e) {
      throw Exception('Failed to block blog: $e');
    }
  }

  @override
  Future<List<TumblrBlog>> getBlocks(
    String blogIdentifier, {
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      // Validate limit is within allowed range
      if (limit < 1 || limit > 20) {
        throw ArgumentError('Limit must be between 1 and 20');
      }

      final queryParams = <String, dynamic>{
        'offset': offset,
        'limit': limit,
      };

      final response = await get(
        'blog/$blogIdentifier/blocks',
        queryParameters: queryParams,
      );

      final blockedBlogs = response.data['response']['blocked_tumblelogs'] as List<dynamic>;
      final blockedBlogsList = blockedBlogs
          .map((blog) => TumblrBlog.fromJson(blog as Map<String, dynamic>))
          .toList();
      
      return blockedBlogsList;
    } catch (e) {
      throw Exception('Failed to get blog blocks: $e');
    }
  }

  @override
  Future<bool> removeBlock(
    String blogIdentifier,
    String blockedBlogIdentifier,
  ) async {
    try {
      final response = await delete(
        'blog/$blogIdentifier/blocks',
        data: {'blocked_tumblelog': blockedBlogIdentifier},
      );
      
      return response.statusCode == 200;
    } catch (e) {
      throw Exception('Failed to remove blog block: $e');
    }
  }

  String _getContentType(String filePath) {
    final extension = filePath.split('.').last.toLowerCase();
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'png':
        return 'image/png';
      case 'gif':
        return 'image/gif';
      default:
        return 'image/jpeg';
    }
  }
}
