// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      memberCount: (json['member_count'] as num?)?.toInt(),
      mentionTag: json['mention_tag'] as String,
      canView: json['can_view'] as bool,
      description: json['description'] as String?,
      about: json['about'] as String?,
      guidelines: (json['guidelines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      visibility: json['visibility'] as String?,
      membersOnlineCount: (json['members_online_count'] as num?)?.toInt(),
      isMember: json['is_member'] as bool?,
      canPost: json['can_post'] as bool?,
      canEdit: json['can_edit'] as bool?,
      canInteract: json['can_interact'] as bool?,
      canInvite: json['can_invite'] as bool?,
      canViewComments: json['can_view_comments'] as bool?,
      postCount: (json['post_count'] as num?)?.toInt(),
      unreadPostCount: (json['unread_post_count'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdTs: (json['created_ts'] as num?)?.toInt(),
      handleCanChange: json['handle_can_change'] as bool?,
      handleNextChangeTs: (json['handle_next_change_ts'] as num?)?.toInt(),
      canEditContentLabel: json['can_edit_content_label'] as bool?,
      avatarImage: (json['avatar_image'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      headerImage: (json['header_image'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      populationCap: (json['population_cap'] as num?)?.toInt(),
      joinType: json['join_type'] as String?,
      hasContentLabel: json['has_content_label'] as bool?,
      contentLabelCategories:
          (json['content_label_categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      inviteLink: json['invite_link'] as String?,
      pendingInvitationsCount:
          (json['pending_invitations_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'title': instance.title,
      'description': instance.description,
      'about': instance.about,
      'guidelines': instance.guidelines,
      'visibility': instance.visibility,
      'member_count': instance.memberCount,
      'members_online_count': instance.membersOnlineCount,
      'mention_tag': instance.mentionTag,
      'is_member': instance.isMember,
      'can_view': instance.canView,
      'can_post': instance.canPost,
      'can_edit': instance.canEdit,
      'can_interact': instance.canInteract,
      'can_invite': instance.canInvite,
      'can_view_comments': instance.canViewComments,
      'post_count': instance.postCount,
      'unread_post_count': instance.unreadPostCount,
      'tags': instance.tags,
      'created_ts': instance.createdTs,
      'handle_can_change': instance.handleCanChange,
      'handle_next_change_ts': instance.handleNextChangeTs,
      'can_edit_content_label': instance.canEditContentLabel,
      'avatar_image': instance.avatarImage?.map((e) => e.toJson()).toList(),
      'header_image': instance.headerImage?.map((e) => e.toJson()).toList(),
      'population_cap': instance.populationCap,
      'join_type': instance.joinType,
      'has_content_label': instance.hasContentLabel,
      'content_label_categories': instance.contentLabelCategories,
      'invite_link': instance.inviteLink,
      'pending_invitations_count': instance.pendingInvitationsCount,
    };
