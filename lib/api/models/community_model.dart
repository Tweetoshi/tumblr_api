import 'package:json_annotation/json_annotation.dart';
import 'package:tumblr_api/api/models/avatar_image_model.dart';

part 'community_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Community {
  /// The name/handle of the community, without the double-@
  final String name;

  /// The unique identifier of the community
  final String uuid;

  /// The title of the community
  final String title;

  /// The description of the community
  final String? description;

  /// The About information of the community
  final String? about;

  /// An array of strings, each a community guideline
  final List<String>? guidelines;

  /// The community's visibility, public or private
  final String? visibility;

  /// How many members are in this community
  @JsonKey(name: 'member_count')
  final int? memberCount;

  /// How many members are "online" now
  final int? membersOnlineCount;

  /// The handle of the community, with the double-@
  @JsonKey(name: 'mention_tag')
  final String mentionTag;

  /// Whether the current user is a member of this community
  @JsonKey(name: 'is_member')
  final bool? isMember;

  /// Whether the community can be viewed by the current user
  @JsonKey(name: 'can_view')
  final bool canView;

  /// Whether the current user can post to this community
  @JsonKey(name: 'can_post')
  final bool? canPost;

  /// Whether the current user can edit this community
  @JsonKey(name: 'can_edit')
  final bool? canEdit;

  /// Whether the current user can interact with the posts in this community
  @JsonKey(name: 'can_interact')
  final bool? canInteract;

  /// Whether the current user can invite others to this community
  @JsonKey(name: 'can_invite')
  final bool? canInvite;

  /// Whether the current user can view comments in posts in this community
  @JsonKey(name: 'can_view_comments')
  final bool? canViewComments;

  /// The number of posts published in this community
  @JsonKey(name: 'post_count')
  final int? postCount;

  /// The number of "unread" posts for the current user
  @JsonKey(name: 'unread_post_count')
  final int? unreadPostCount;

  /// The tags used to describe this community
  final List<String>? tags;

  /// The unix epoch timestamp of when this community was created
  @JsonKey(name: 'created_ts')
  final int? createdTs;

  /// Whether the community handle can be changed
  @JsonKey(name: 'handle_can_change')
  final bool? handleCanChange;

  /// If the handle cannot be changed, this is the next time it can be changed
  @JsonKey(name: 'handle_next_change_ts')
  final int? handleNextChangeTs;

  /// Whether the content label can be changed
  @JsonKey(name: 'can_edit_content_label')
  final bool? canEditContentLabel;

  /// The community's avatar, in various sizes
  @JsonKey(name: 'avatar_image')
  final List<AvatarImage>? avatarImage;

  /// The community's header image, in various sizes
  @JsonKey(name: 'header_image')
  final List<AvatarImage>? headerImage;

  /// The population cap of the community, can be null if there is none
  @JsonKey(name: 'population_cap')
  final int? populationCap;

  /// Whether the community is invite-only or free-to-join
  @JsonKey(name: 'join_type')
  final String? joinType;

  /// Whether this community has a "mature" content label
  @JsonKey(name: 'has_content_label')
  final bool? hasContentLabel;

  /// The specific content labels this community has applied
  @JsonKey(name: 'content_label_categories')
  final List<String>? contentLabelCategories;

  /// The invite link to join the community, can be null if disabled
  @JsonKey(name: 'invite_link')
  final String? inviteLink;

  /// How many pending invitations there are
  @JsonKey(name: 'pending_invitations_count')
  final int? pendingInvitationsCount;

  Community({
    required this.name,
    required this.uuid,
    required this.title,
    required this.memberCount,
    required this.mentionTag,
    required this.canView,
    this.description,
    this.about,
    this.guidelines,
    this.visibility,
    this.membersOnlineCount,
    this.isMember,
    this.canPost,
    this.canEdit,
    this.canInteract,
    this.canInvite,
    this.canViewComments,
    this.postCount,
    this.unreadPostCount,
    this.tags,
    this.createdTs,
    this.handleCanChange,
    this.handleNextChangeTs,
    this.canEditContentLabel,
    this.avatarImage,
    this.headerImage,
    this.populationCap,
    this.joinType,
    this.hasContentLabel,
    this.contentLabelCategories,
    this.inviteLink,
    this.pendingInvitationsCount,
  });

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
  Map<String, dynamic> toJson() => _$CommunityToJson(this);
}
