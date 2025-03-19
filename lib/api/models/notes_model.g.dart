// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Note _$NoteFromJson(Map<String, dynamic> json) => Note(
      timestamp: (json['timestamp'] as num).toInt(),
      blogName: json['blog_name'] as String,
      blogUuid: json['blog_uuid'] as String,
      blogUrl: json['blog_url'] as String,
      type: json['type'] as String,
      postId: json['post_id'] as String?,
      reblogKey: json['reblog_key'] as String?,
      postUrl: json['post_url'] as String?,
      avatarShape: json['avatar_shape'] as String?,
      avatarUrl: json['avatar_url'] as Map<String, dynamic>?,
      formattedReplyText: json['formatted_reply_text'] as String?,
      reply: json['reply_text'] as String?,
      reblogParentBlogName: json['reblog_parent_blog_name'] as String?,
    );

Map<String, dynamic> _$NoteToJson(Note instance) => <String, dynamic>{
      'timestamp': instance.timestamp,
      'blog_name': instance.blogName,
      'blog_uuid': instance.blogUuid,
      'blog_url': instance.blogUrl,
      'type': instance.type,
      'post_id': instance.postId,
      'reblog_key': instance.reblogKey,
      'post_url': instance.postUrl,
      'avatar_shape': instance.avatarShape,
      'avatar_url': instance.avatarUrl,
      'formatted_reply_text': instance.formattedReplyText,
      'reply_text': instance.reply,
      'reblog_parent_blog_name': instance.reblogParentBlogName,
    };
