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
    String? parentBlogUuid,
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
    String? parentBlogUuid,
    List<LayoutBlock>? layout,
    String state = 'published',
    List<String>? tags,
    String? publishOn,
    String? date,
  }) async {
    try {
      // Convert content blocks to JSON
      final contentJson = content.map((block) => block.toJson()).toList();

      // Prepare the request body
      final Map<String, dynamic> body = {
        'content': contentJson,
      };

      // Add optional parameters if present
      if (layout != null) {
        body['layout'] = layout.map((block) => block.toJson()).toList();
      }
      if (tags != null && tags.isNotEmpty) body['tags'] = tags;
      if (publishOn != null) body['publish_on'] = publishOn;
      if (date != null) body['date'] = date;
      if (state != 'published') body['state'] = state;

      // Handle reblog vs new post
      if (parentPostId != null && parentBlogUuid != null) {
        body['parent_post_id'] = parentPostId;
        body['parent_blog_uuid'] = parentBlogUuid;
        body['reblog_key'] = 'reblog'; // This is a fixed value for NPF
      }

      // Make the POST request
      final response = await post(
        'blog/$blogIdentifier/posts',
        body: body,
      );

      // Parse the response
      final postData = response.data['response'] as Map<String, dynamic>;
      return postData['id'];
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
}
