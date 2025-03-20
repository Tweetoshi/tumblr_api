import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class TagService {
  factory TagService({required String accessToken}) =>
      _TagService(accessToken: accessToken);

  /// Retrieves posts with a specific tag
  /// Required parameters:
  /// - tag: The tag to search for
  ///
  /// Optional parameters:
  /// - before: Timestamp to get posts before
  /// - limit: Number of posts to return (default 20, max 20)
  /// - filter: Post format to return (html, text, raw)
  Future<List<TumblrPost>> getTaggedPosts(
    String tag, {
    int? before,
    int limit = 20,
    String? filter,
  });
}

class _TagService extends BaseService implements TagService {
  _TagService({required super.accessToken});

  @override
  Future<List<TumblrPost>> getTaggedPosts(
    String tag, {
    int? before,
    int limit = 20,
    String? filter,
  }) async {
    try {
      // Validate limit is within allowed range
      if (limit < 1 || limit > 20) {
        throw ArgumentError('Limit must be between 1 and 20');
      }

      final queryParams = <String, dynamic>{
        'tag': tag,
        'limit': limit,
      };

      if (before != null) queryParams['before'] = before;
      if (filter != null) queryParams['filter'] = filter;

      final response = await get(
        'tagged',
        queryParameters: queryParams,
      );

      final posts = response.data['response'] as List<dynamic>;
      final postsList = posts
          .map((post) => TumblrPost.fromJson(post as Map<String, dynamic>))
          .toList();

      return postsList;
    } catch (e) {
      throw Exception('Failed to get tagged posts: $e');
    }
  }
}
