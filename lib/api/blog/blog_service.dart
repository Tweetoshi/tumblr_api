import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/notes_model.dart';
import 'package:tumblr_api/api/models/notification_response.dart';
import 'package:tumblr_api/api/models/tumblr_api_exception.dart';
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

      // Get common fields for the payload
      final commonFields = _getCommonPayloadFields(
        layout, 
        tags, 
        publishOn, 
        date, 
        state, 
        parentPostId, 
        parentTumblelogUuid, 
        reblogKey
      );
      
      if (hasLocalImages) {
        // Create FormData for multipart request
        final formData = FormData();

        // Process content for local images
        final processedContent = <Map<String, dynamic>>[];
        final Map<String, String> filePathToIdentifier = {};
        int imageCounter = 0;

        // Process content and generate identifiers for local images
        for (final block in content) {
          if (block is ImageContentBlock && block.media.isNotEmpty) {
            final media = block.media.first;
            if (media.url.startsWith('file://')) {
              // Generate identifier for local image
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
        final Map<String, dynamic> payload = {
          'content': processedContent,
          ...commonFields,
        };
        
        // Convert payload to JSON and add to FormData
        formData.fields.add(MapEntry('json', json.encode(payload)));

        // Add image files with matching identifiers
        for (final entry in filePathToIdentifier.entries) {
          final filePath = entry.key.replaceFirst('file://', '');
          final identifier = entry.value;

          formData.files.add(MapEntry(
            identifier,
            await MultipartFile.fromFile(
              filePath,
              contentType: MediaType.parse(_getContentType(filePath)),
              filename: identifier + '.' + filePath.split('.').last,
            ),
          ));
        }
        
        // Send multipart request
        final response = await post(
          'blog/$blogIdentifier/posts',
          data: formData,
        );
        
        return _handlePostResponse(response);
      } else {
        // Standard JSON request for posts without local image uploads
        final Map<String, dynamic> payload = {
          'content': content.map((block) => block.toJson()).toList(),
          ...commonFields,
        };
        
        // Send JSON request
        final response = await post(
          'blog/$blogIdentifier/posts',
          data: payload,
        );
        
        return _handlePostResponse(response);
      }
    } catch (e) {
      if (e is DioException) {
        _handlePostError(e);
      }
      // If we get here, it means e is not a DioException
      // or _handlePostError didn't throw (which shouldn't happen)
      rethrow;
    }
  }

  // Helper method to get common payload fields
  Map<String, dynamic> _getCommonPayloadFields(
    List<LayoutBlock>? layout,
    List<String>? tags,
    String? publishOn,
    String? date,
    String state,
    String? parentPostId,
    String? parentTumblelogUuid,
    String? reblogKey,
  ) {
    final Map<String, dynamic> fields = {};
    
    // Add optional parameters
    if (layout != null) {
      fields['layout'] = layout.map((block) => block.toJson()).toList();
    }
    if (tags != null && tags.isNotEmpty) fields['tags'] = tags.join(',');
    if (publishOn != null) fields['publish_on'] = publishOn;
    if (date != null) fields['date'] = date;
    if (state != 'published') fields['state'] = state;

    // Handle reblog parameters
    if (parentPostId != null && parentTumblelogUuid != null) {
      fields['parent_post_id'] = parentPostId;
      fields['parent_tumblelog_uuid'] = parentTumblelogUuid;
      if (reblogKey != null) fields['reblog_key'] = reblogKey;
    }
    
    return fields;
  }

  // Helper method to handle post response
  String _handlePostResponse(Response response) {
    if (response.statusCode != 201) {
      throw TumblrApiException(
        statusCode: response.statusCode ?? 500,
        message: 'Failed to create post',
        response: response.data,
      );
    }
    
    return response.data['response']['id'];
  }

  // Helper method to handle post errors
  Never _handlePostError(DioException e) {
    if (e.response != null) {
      final statusCode = e.response!.statusCode ?? 500;
      final responseData = e.response!.data;
      
      int? subcode;
      String message = 'An error occurred';
      
      // Try to extract the subcode and detailed message
      if (responseData is Map && responseData.containsKey('meta')) {
        final meta = responseData['meta'] as Map<String, dynamic>;
        if (meta.containsKey('status_code')) {
          subcode = meta['status_code'] as int?;
        }
        if (meta.containsKey('msg')) {
          message = meta['msg'] as String;
        }
      }
      
      // Create specific error messages based on status codes
      switch (statusCode) {
        case 400:
          if (subcode == 8001) {
            message = 'Invalid NPF JSON parameter format';
          } else if (subcode == 8002) {
            message = 'Invalid reblog parent post or blog';
          } else if (subcode == 8005) {
            message = 'Uploaded media is in an invalid format';
          } else if (subcode == 8016) {
            message = 'Invalid answer content or layout format';
          }
          break;
        case 401:
          message = 'Unauthorized client';
          break;
        case 403:
          if (subcode == 8004) {
            message = 'Daily media upload limit reached';
          } else if (subcode == 8008) {
            message = 'Video uploads are not allowed in reblogs';
          } else if (subcode == 8010) {
            message = 'A video is still transcoding, please wait before uploading another';
          } else if (subcode == 8011) {
            message = 'Daily video upload limit reached';
          } else if (subcode == 8022) {
            message = 'Blog queue limit has been reached';
          } else if (subcode == 8023) {
            message = 'Blog daily posting limit has been reached';
          } else {
            message = 'Not allowed to perform this action';
          }
          break;
        case 404:
          message = 'Resource not found';
          break;
        case 500:
          if (subcode == 8006) {
            message = 'Unknown media upload error';
          } else if (subcode == 8009) {
            message = 'Unknown video upload error';
          } else {
            message = 'Internal server error';
          }
          break;
        case 503:
          message = 'API posting is currently disabled';
          break;
      }
      
      throw TumblrApiException(
        statusCode: statusCode,
        subcode: subcode,
        message: message,
        response: responseData,
      );
    }
    
    // For network errors or other non-response errors
    throw TumblrApiException(
      statusCode: 0,
      message: e.message ?? 'Network error occurred',
      response: null,
    );
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
      if (e is DioException && e.response != null) {
        throw TumblrApiException(
          statusCode: e.response!.statusCode ?? 500,
          message: 'Failed to remove blog block',
          response: e.response!.data,
        );
      }
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
