// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: json['id'] as String,
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      timestamp: (json['timestamp'] as num).toInt(),
      unread: json['unread'] as bool,
      targetPostId: json['target_post_id'] as String?,
      fromTumblelogName: json['from_tumblelog_name'] as String?,
      postId: json['post_id'] as String?,
      postTags: (json['post_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      addedText: json['added_text'] as String?,
      replyText: json['reply_text'] as String?,
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'timestamp': instance.timestamp,
      'unread': instance.unread,
      'target_post_id': instance.targetPostId,
      'from_tumblelog_name': instance.fromTumblelogName,
      'post_id': instance.postId,
      'post_tags': instance.postTags,
      'added_text': instance.addedText,
      'reply_text': instance.replyText,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.like: 'like',
  NotificationType.reply: 'reply',
  NotificationType.follow: 'follow',
  NotificationType.mentionInReply: 'mention_in_reply',
  NotificationType.mentionInPost: 'mention_in_post',
  NotificationType.reblogNaked: 'reblog_naked',
  NotificationType.reblogWithContent: 'reblog_with_content',
  NotificationType.ask: 'ask',
  NotificationType.answeredAsk: 'answered_ask',
  NotificationType.newGroupBlogMember: 'new_group_blog_member',
  NotificationType.postAttribution: 'post_attribution',
  NotificationType.postFlagged: 'post_flagged',
  NotificationType.postAppealAccepted: 'post_appeal_accepted',
  NotificationType.postAppealRejected: 'post_appeal_rejected',
  NotificationType.whatYouMissed: 'what_you_missed',
  NotificationType.conversationalNote: 'conversational_note',
  NotificationType.milestonePost: 'milestone_post',
  NotificationType.unknown: 'unknown',
};
