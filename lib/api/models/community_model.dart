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
  final int memberCount;

  /// How many members are "online" now
  final int? membersOnlineCount;

  /// The handle of the community, with the double-@
  final String mentionTag;

  /// Whether the current user is a member of this community
  final bool? isMember;

  /// Whether the community can be viewed by the current user
  final bool canView;

  /// Whether the current user can post to this community
  final bool? canPost;

  /// Whether the current user can edit this community
  final bool? canEdit;

  /// Whether the current user can interact with the posts in this community
  final bool? canInteract;

  /// Whether the current user can invite others to this community
  final bool? canInvite;

  /// Whether the current user can view comments in posts in this community
  final bool? canViewComments;

  /// The number of posts published in this community
  final int? postCount;

  /// The number of "unread" posts for the current user
  final int? unreadPostCount;

  /// The tags used to describe this community
  final List<String>? tags;

  /// The unix epoch timestamp of when this community was created
  final int? createdTs;

  /// Whether the community handle can be changed
  final bool? handleCanChange;

  /// If the handle cannot be changed, this is the next time it can be changed
  final int? handleNextChangeTs;

  /// Whether the content label can be changed
  final bool? canEditContentLabel;

  /// The community's avatar, in various sizes
  final List<AvatarImage>? avatarImage;

  /// The community's header image, in various sizes
  final List<AvatarImage>? headerImage;

  /// The population cap of the community, can be null if there is none
  final int? populationCap;

  /// Whether the community is invite-only or free-to-join
  final String? joinType;

  /// Whether this community has a "mature" content label
  final bool? hasContentLabel;

  /// The specific content labels this community has applied
  final List<String>? contentLabelCategories;

  /// The invite link to join the community, can be null if disabled
  final String? inviteLink;

  /// How many pending invitations there are
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
