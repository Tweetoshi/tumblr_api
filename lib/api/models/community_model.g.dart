// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Community _$CommunityFromJson(Map<String, dynamic> json) => Community(
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      memberCount: (json['memberCount'] as num).toInt(),
      mentionTag: json['mentionTag'] as String,
      canView: json['canView'] as bool,
      description: json['description'] as String?,
      about: json['about'] as String?,
      guidelines: (json['guidelines'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      visibility: json['visibility'] as String?,
      membersOnlineCount: (json['membersOnlineCount'] as num?)?.toInt(),
      isMember: json['isMember'] as bool?,
      canPost: json['canPost'] as bool?,
      canEdit: json['canEdit'] as bool?,
      canInteract: json['canInteract'] as bool?,
      canInvite: json['canInvite'] as bool?,
      canViewComments: json['canViewComments'] as bool?,
      postCount: (json['postCount'] as num?)?.toInt(),
      unreadPostCount: (json['unreadPostCount'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdTs: (json['createdTs'] as num?)?.toInt(),
      handleCanChange: json['handleCanChange'] as bool?,
      handleNextChangeTs: (json['handleNextChangeTs'] as num?)?.toInt(),
      canEditContentLabel: json['canEditContentLabel'] as bool?,
      avatarImage: (json['avatarImage'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      headerImage: (json['headerImage'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      populationCap: (json['populationCap'] as num?)?.toInt(),
      joinType: json['joinType'] as String?,
      hasContentLabel: json['hasContentLabel'] as bool?,
      contentLabelCategories: (json['contentLabelCategories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      inviteLink: json['inviteLink'] as String?,
      pendingInvitationsCount:
          (json['pendingInvitationsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CommunityToJson(Community instance) => <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'title': instance.title,
      'description': instance.description,
      'about': instance.about,
      'guidelines': instance.guidelines,
      'visibility': instance.visibility,
      'memberCount': instance.memberCount,
      'membersOnlineCount': instance.membersOnlineCount,
      'mentionTag': instance.mentionTag,
      'isMember': instance.isMember,
      'canView': instance.canView,
      'canPost': instance.canPost,
      'canEdit': instance.canEdit,
      'canInteract': instance.canInteract,
      'canInvite': instance.canInvite,
      'canViewComments': instance.canViewComments,
      'postCount': instance.postCount,
      'unreadPostCount': instance.unreadPostCount,
      'tags': instance.tags,
      'createdTs': instance.createdTs,
      'handleCanChange': instance.handleCanChange,
      'handleNextChangeTs': instance.handleNextChangeTs,
      'canEditContentLabel': instance.canEditContentLabel,
      'avatarImage': instance.avatarImage?.map((e) => e.toJson()).toList(),
      'headerImage': instance.headerImage?.map((e) => e.toJson()).toList(),
      'populationCap': instance.populationCap,
      'joinType': instance.joinType,
      'hasContentLabel': instance.hasContentLabel,
      'contentLabelCategories': instance.contentLabelCategories,
      'inviteLink': instance.inviteLink,
      'pendingInvitationsCount': instance.pendingInvitationsCount,
    };
