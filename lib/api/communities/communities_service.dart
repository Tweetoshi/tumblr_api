import 'package:tumblr_api/api/models/community_model.dart';
import 'package:tumblr_api/base_api.dart';

abstract class CommunitiesService {
  factory CommunitiesService({required String accessToken}) =>
      _CommunitiesService(accessToken: accessToken);

  Future<List<Community>> getCommunities();
}

class _CommunitiesService extends BaseService implements CommunitiesService {
  _CommunitiesService({required super.accessToken});

  @override
  Future<List<Community>> getCommunities() async {
    final response = await get('communities');
    return response.data['response']['communities'].map((community) => Community.fromJson(community)).toList();
  }
}