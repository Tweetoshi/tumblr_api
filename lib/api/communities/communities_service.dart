import 'package:tumblr_api/api/models/community_model.dart';
import 'package:tumblr_api/api/models/community_timeline_response.dart';
import 'package:tumblr_api/base_api.dart';

abstract class CommunitiesService {
  factory CommunitiesService({required String accessToken}) =>
      _CommunitiesService(accessToken: accessToken);

  Future<List<Community>> getCommunities();

  Future<CommunityTimelineResponse> getCommunityTimeline(String communityHandle);
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
  Future<CommunityTimelineResponse> getCommunityTimeline(
    String communityHandle, {
    bool npf = true,
  }) async {
    try {
      final response = await get('communities/$communityHandle/timeline',
          queryParameters: {'npf': npf});

      final processedResponse =
          CommunityTimelineResponse.fromJson(response.data);
      return processedResponse;
    } catch (e) {
      throw Exception('Failed to get communities $e');
    }
  }
}
