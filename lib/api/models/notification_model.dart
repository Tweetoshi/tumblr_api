import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';



@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    // Common fields for all notification types
    required String id,
    required String type,
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
