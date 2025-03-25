import 'package:tumblr_api/api/models/notification_model.dart';

class NotificationResponse {
  final List<Notification> notifications;
  final Map<String, dynamic> links;
  final int? totalNotifications;

  NotificationResponse({
    required this.notifications,
    Map<String, dynamic>? links,
    this.totalNotifications,
  }) : links = links ?? <String, dynamic>{};

  String? get nextCursor => links['next']?['href'];
  String? get prevCursor => links['prev']?['href'];

  factory NotificationResponse.fromJson(Map<String, dynamic> json) {
    final notificationsList = (json['notifications'] as List<dynamic>)
        .map((notification) =>
            Notification.fromJson(notification as Map<String, dynamic>))
        .toList();

    return NotificationResponse(
      notifications: notificationsList,
      links: json['_links'] != null
          ? Map<String, dynamic>.from(json['_links'] as Map<dynamic, dynamic>)
          : null,
      totalNotifications: json['total_notifications'] as int?,
    );
  }
}
