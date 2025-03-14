import 'package:tumblr_api/api/models/community_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class CommunitiesService {
  factory CommunitiesService({required String accessToken}) =>
      _CommunitiesService(accessToken: accessToken);

  Future<List<Community>> getCommunities();

  Future<List<TumblrPost>> getCommunityTimeline(String communityHandle);
}

class _CommunitiesService extends BaseService implements CommunitiesService {
  _CommunitiesService({required super.accessToken});

  @override
  Future<List<Community>> getCommunities() async {
    try {
      final response = await get('communities');

      final communities = response.data['response'] as List;
      return communities
          .map((community) => Community.fromJson(community))
          .toList();
    } catch (e) {
      throw Exception('Failed to get communities $e');
    }
  }

  @override
  Future<List<TumblrPost>> getCommunityTimeline(String communityHandle) async {
    try {
      final response = await get('communities/$communityHandle/timeline');

      final posts =
          response.data['response']['timeline']['elements'] as List<dynamic>;
      return posts.map((post) => TumblrPost.fromJson(post)).toList();
    } catch (e) {
      throw Exception('Failed to get communities $e');
    }
  }
}
