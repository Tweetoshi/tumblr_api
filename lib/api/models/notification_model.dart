import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// Generic JSON converter for handling enums with unknown values
class EnumConverter<T extends Enum> implements JsonConverter<T, String> {
  final Map<String, T> enumValues;
  final T defaultValue;

  const EnumConverter(this.enumValues, this.defaultValue);

  @override
  T fromJson(String value) => enumValues[value] ?? defaultValue;

  @override
  String toJson(T object) {
    for (final entry in enumValues.entries) {
      if (entry.value == object) {
        return entry.key;
      }
    }
    // Return the raw value if no matching key is found
    return enumValues.keys.firstWhere(
      (key) => enumValues[key] == defaultValue,
      orElse: () => 'unknown',
    );
  }
}

/// Define the converter for NotificationType
class NotificationTypeConverter extends EnumConverter<NotificationType> {
  static const Map<String, NotificationType> _values = {
    'like': NotificationType.like,
    'reply': NotificationType.reply,
    'follow': NotificationType.follow,
    'follower': NotificationType.follower,
    'mention_in_reply': NotificationType.mentionInReply,
    'mention_in_post': NotificationType.mentionInPost,
    'reblog_naked': NotificationType.reblogNaked,
    'reblog': NotificationType.reblog,
    'ask': NotificationType.ask,
    'answered_ask': NotificationType.answeredAsk,
    'new_group_blog_member': NotificationType.newGroupBlogMember,
    'post_attribution': NotificationType.postAttribution,
    'post_flagged': NotificationType.postFlagged,
    'post_appeal_accepted': NotificationType.postAppealAccepted,
    'post_appeal_rejected': NotificationType.postAppealRejected,
    'what_you_missed': NotificationType.whatYouMissed,
    'conversational_note': NotificationType.conversationalNote,
    'milestone_post': NotificationType.milestonePost,
    'community_reaction_count': NotificationType.communityReactionCount,
    'unknown': NotificationType.unknown,
  };

  const NotificationTypeConverter() 
      : super(_values, NotificationType.unknown);
}

/// Enum representing the different notification types from Tumblr API
/// See: https://www.tumblr.com/docs/en/api/v2#notifications--retrieve-blogs-activity-feed
enum NotificationType {
  @JsonValue('like')
  like,

  @JsonValue('reply')
  reply,

  @JsonValue('follow')
  follow,

  @JsonValue('follower')
  follower,

  @JsonValue('mention_in_reply')
  mentionInReply,

  @JsonValue('mention_in_post')
  mentionInPost,

  @JsonValue('reblog_naked')
  reblogNaked,

  @JsonValue('reblog')
  reblog,

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
  conversationalNote,

  @JsonValue('milestone_post')
  milestonePost,

  @JsonValue('community_reaction_count')
  communityReactionCount,

  @JsonValue('unknown')
  unknown;

  /// Helper method to convert string to enum value
  static NotificationType fromString(String value) {
    try {
      return NotificationType.values.firstWhere(
        (type) => type.toString().split('.').last == value,
      );
    } catch (e) {
      // Return unknown for any notification type not listed in the enum
      return NotificationType.unknown;
    }
  }
}

@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    // Common fields for all notification types
    required String id,
    @NotificationTypeConverter() required NotificationType type,
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
