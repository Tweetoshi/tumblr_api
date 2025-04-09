import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// Enum representing the different notification types from Tumblr API
/// See: https://www.tumblr.com/docs/en/api/v2#notifications--retrieve-blogs-activity-feed
enum NotificationType {
  @JsonValue('like')
  like,

  @JsonValue('reply')
  reply,

  @JsonValue('follow')
  follow,

  @JsonValue('mention_in_reply')
  mentionInReply,

  @JsonValue('mention_in_post')
  mentionInPost,

  @JsonValue('reblog_naked')
  reblogNaked,

  @JsonValue('reblog_with_content')
  reblogWithContent,

  @JsonValue('ask')
  ask,

  @JsonValue('answered_ask')
  answeredAsk,

  @JsonValue('new_group_blog_member')
  newGroupBlogMember,

  @JsonValue('post_attribution')
  postAttribution,

  @JsonValue('post_flagged')
  postFlagged,

  @JsonValue('post_appeal_accepted')
  postAppealAccepted,

  @JsonValue('post_appeal_rejected')
  postAppealRejected,

  @JsonValue('what_you_missed')
  whatYouMissed,

  @JsonValue('conversational_note')
  conversationalNote;

  /// Helper method to convert string to enum value
  static NotificationType? fromString(String value) {
    return NotificationType.values.firstWhere(
      (type) => type.toString().split('.').last == value,
    );
  }
}

@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    // Common fields for all notification types
    required String id,
    required NotificationType type,
    required int timestamp,
    required bool unread,
    // Fields that are present in specific notification types
    String? targetPostId,
    String? fromTumblelogName,
    String? postId,
    List<String>? postTags,
    String? addedText,
    String? replyText,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
