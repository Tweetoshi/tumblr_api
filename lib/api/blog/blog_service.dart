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
}

class _BlogService extends BaseService implements BlogService {
  _BlogService({required super.accessToken});

  @override
  Future<TumblrBlog> getInfo(String blogIdentifier) async {
    final response = await get('/v2/blog/$blogIdentifier/info');
    return TumblrBlog.fromJson(response.data['response']['blog'] as Map<String, dynamic>);
  }

  @override
  Future<List<TumblrPost>> getPosts(
    String blogIdentifier, {
    String? type,
    String? tag,
    int limit = 20,
    int offset = 0,
    String? filter,
  }) async {
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

    final response = await get(
      '/v2/blog/$blogIdentifier/posts',
      queryParameters: queryParams,
    );
    final posts = response.data['response']['posts'] as List<dynamic>;
    final postsList = posts
        .map((post) => TumblrPost.fromJson(post as Map<String, dynamic>))
        .toList();
    return postsList;
  }
}
