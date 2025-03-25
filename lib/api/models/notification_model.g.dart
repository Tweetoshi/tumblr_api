// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      id: json['id'] as String,
      type: json['type'] as String,
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
      'type': instance.type,
      'timestamp': instance.timestamp,
      'unread': instance.unread,
      'target_post_id': instance.targetPostId,
      'from_tumblelog_name': instance.fromTumblelogName,
      'post_id': instance.postId,
      'post_tags': instance.postTags,
      'added_text': instance.addedText,
      'reply_text': instance.replyText,
    };
