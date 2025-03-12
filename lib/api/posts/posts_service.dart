import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class PostsService {
  factory PostsService({required String accessToken}) =>
      _PostsService(accessToken: accessToken);

  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblogInfo = false,
    bool? notesInfo = false,
    int? sinceId,
    bool npf = true,
    int? offset,
    String? type,
  });
}

class _PostsService extends BaseService implements PostsService {
  _PostsService({required super.accessToken});

  /// Request Parameters for dashboard posts
  /// - limit: Number (1-20) - The number of results to return (default: 20)
  /// - offset: Number - Post number to start at (default: 0/first post)
  /// - type: String - Filter by post type (text, photo, quote, link, chat, audio, video, answer)
  /// - since_id: Number - Return posts that appeared after this ID (for pagination)
  /// - reblog_info: Boolean - Whether to return reblog information
  /// - notes_info: Boolean - Whether to return notes information
  /// - npf: Boolean - Returns posts' content in NPF format instead of legacy format
  @override
  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblogInfo = false,
    bool? notesInfo = false,
    int? sinceId,
    bool npf = true,
    int? offset,
    String? type,
  }) async {
    try {
      final dashboard = await super.get('user/dashboard', queryParameters: {
        'limit': limit,
        'reblog_info': reblogInfo,
        'notes_info': notesInfo,
        if (offset != null) 'offset': offset,
        if (sinceId != null) 'since_id': sinceId,
        if (type != null) 'type': type,
        'npf': npf,
      });
      final posts = dashboard.data['response']['posts'] as List<dynamic>;
      final postsList = posts
          .map((post) => TumblrPost.fromJson(post as Map<String, dynamic>))
          .toList();
      return postsList;
    } catch (e, stackTrace) {
      throw Exception('Failed to get dashboard posts $e $stackTrace');
    }
  }
}
