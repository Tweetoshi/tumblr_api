import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class PostsService {
  factory PostsService({required String accessToken}) =>
      _PostsService(accessToken: accessToken);

  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblog_info = false,
    bool? notes_info = false,
  });
}

class _PostsService extends BaseService implements PostsService {
  _PostsService({required super.accessToken});

  @override
  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblog_info = false,
    bool? notes_info = false,
    bool npf = true,
  }) async {
    try {
      final dashboard = await super.get('user/dashboard', queryParameters: {
        'limit': limit,
        'reblog_info': reblog_info,
        'notes_info': notes_info,
        'npf': npf,
      });
      final posts = dashboard.data['response']['posts'] as List<dynamic>;
      final postsList = posts
          .map((post) => TumblrPost.fromJson(post as Map<String, dynamic>))
          .toList();
      return postsList as List<TumblrPost>;
    } catch (e) {
      throw Exception('Failed to get dashboard posts');
    }
  }
}
