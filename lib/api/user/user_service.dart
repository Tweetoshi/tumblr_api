import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/api/models/user_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class UserService {
  factory UserService({required String accessToken}) =>
      _UserService(accessToken: accessToken);

  Future<TumblrUser> getUserProfile();

  /// Request Parameters for dashboard posts
  /// - limit: Number (1-20) - The number of results to return (default: 20)
  /// - offset: Number - Post number to start at (default: 0/first post)
  /// - type: String - Filter by post type (text, photo, quote, link, chat, audio, video, answer)
  /// - since_id: Number - Return posts that appeared after this ID (for pagination)
  /// - reblog_info: Boolean - Whether to return reblog information
  /// - notes_info: Boolean - Whether to return notes information
  /// - npf: Boolean - Returns posts' content in NPF format instead of legacy format
  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblogInfo = false,
    bool? notesInfo = false,
    int? sinceId,
    bool npf = true,
    int? offset,
    String? type,
  });

  /// Follow a blog
  ///
  /// This method allows the user to follow a blog.
  /// - blogIdentifier: The blog to follow (any blog identifier format)
  ///
  /// Returns a Map containing the response data
  Future<Map<String, dynamic>> followBlog(String blogIdentifier);

  /// Unfollow a blog
  ///
  /// This method allows the user to unfollow a blog.
  /// - blogIdentifier: The blog to unfollow (any blog identifier format)
  ///
  /// Returns a Map containing the response data
  Future<Map<String, dynamic>> unfollowBlog(String blogIdentifier);
}

class _UserService extends BaseService implements UserService {
  _UserService({required super.accessToken});

  @override
  Future<TumblrUser> getUserProfile() async {
    try {
      final response = await super.get('user/info');

      return TumblrUser.fromJson(response.data['response']['user']);
    } catch (e) {
      throw Exception('Failed to get user profile');
    }
  }

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

  @override
  Future<Map<String, dynamic>> followBlog(String blogIdentifier) async {
    try {
      final response = await super.post('user/follow', queryParameters: {
        'url': blogIdentifier,
      });

      return response.data['response'] as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> unfollowBlog(String blogIdentifier) async {
    try {
      final response = await super.post('user/unfollow', queryParameters: {
        'url': blogIdentifier,
      });

      return response.data['response'] as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
