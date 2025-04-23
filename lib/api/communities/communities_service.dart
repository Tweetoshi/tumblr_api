import 'package:tumblr_api/api/models/community_model.dart';
import 'package:tumblr_api/api/models/community_timeline_response.dart';
import 'package:tumblr_api/base_api.dart';

/// Service handling Tumblr communities API interactions
/// https://www.tumblr.com/docs/en/api/v2#communities-methods
///
/// This service allows:
/// - Retrieving a list of communities the user has joined
/// - Fetching timeline posts from specific communities
abstract class CommunitiesService {
  factory CommunitiesService({required String accessToken}) =>
      _CommunitiesService(accessToken: accessToken);

  /// Fetches a list of communities the user has joined
  ///
  /// Uses the GET /v2/communities endpoint
  /// https://www.tumblr.com/docs/en/api/v2#get-v2communities---list-joined-communities
  Future<List<Community>> getCommunities();

  /// Retrieves a timeline of posts from a specific community
  ///
  /// Uses the GET /v2/communities/{community-handle}/timeline endpoint
  /// https://www.tumblr.com/docs/en/api/v2#get-v2communitiescommunity-handletimeline---get-posts-from-a-community
  ///
  /// @param communityHandle: The unique handle of the community
  Future<CommunityTimelineResponse> getCommunityTimeline(
      String communityHandle);
      
  /// Add a reaction to a post in a community
  ///
  /// Uses the PUT /v2/communities/{community-handle}/posts/{post-id}/reactions endpoint
  /// https://www.tumblr.com/docs/en/api/v2#put-v2communitiescommunity-handlepostspost-idreactions---add-reaction-to-post
  ///
  /// @param communityHandle: The unique handle of the community
  /// @param postId: The ID of the post to add a reaction to
  /// @param reactionId: The ID of the reaction to add
  Future<Map<String, dynamic>> addReactionToPost(
    String communityHandle,
    String postId,
    String grapheme,
  );
  
  /// Remove a reaction from a post in a community
  ///
  /// Uses the DELETE /v2/communities/{community-handle}/posts/{post-id}/reactions/{reaction-id} endpoint
  /// https://www.tumblr.com/docs/en/api/v2#delete-v2communitiescommunity-handlepostspost-idreactionsreaction-id---remove-reaction-from-post
  ///
  /// @param communityHandle: The unique handle of the community
  /// @param postId: The ID of the post to remove the reaction from
  /// @param reactionId: The ID of the reaction to remove
  Future<Map<String, dynamic>> removeReactionFromPost(
    String communityHandle,
    String postId,
    String grapheme,
  );
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
  
  @override
  Future<Map<String, dynamic>> addReactionToPost(
    String communityHandle,
    String postId,
    String grapheme,
  ) async {
    try {
      final response = await put(
        'communities/$communityHandle/posts/$postId/reactions',
        data: {'grapheme': grapheme},
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
  
  @override
  Future<Map<String, dynamic>> removeReactionFromPost(
    String communityHandle,
    String postId,
    String grapheme,
  ) async {
    try {
      final response = await delete(
        'communities/$communityHandle/posts/$postId/reactions/$grapheme',
      );

      return response.data as Map<String, dynamic>;
    } catch (e) {
      rethrow;
    }
  }
}
