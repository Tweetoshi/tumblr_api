import 'package:tumblr_api/api/models/avatar_image_model.dart';

/// Represents a Tumblr blog
class TumblrBlog {
  final String uuid;
  final String name;
  final String? title;
  final String? description;
  final int? followers;
  final String? url;
  final bool? followed;
  final List<AvatarImage>? avatar;
  final bool? primary;

  TumblrBlog({
    required this.uuid,
    required this.name,
    this.title,
    required this.url,
    this.avatar,
    this.description,
    this.followers,
    this.followed,
    this.primary = false,
  });

  factory TumblrBlog.fromJson(Map<String, dynamic> json) {
    return TumblrBlog(
      uuid: json['uuid'] ?? '',
      name: json['name'] ?? '',
      title: json['title'],
      url: json['url'] ?? '',
      followed: json['followed'],
      description: json['description'],
      followers: json['followers'] ?? 0,
      avatar: json['avatar'] != null
          ? (json['avatar'] as List)
              .map((img) => AvatarImage.fromJson(img))
              .toList()
          : null,
      primary: json['primary'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'uuid': uuid,
      'name': name,
    };

    if (title != null) data['title'] = title;
    if (url != null) data['url'] = url;
    if (avatar != null)
      data['avatar'] = avatar!.map((img) => img.toJson()).toList();
    if (description != null) data['description'] = description;
    if (followers != null) data['followers'] = followers;
    if (followed != null) data['followed'] = followed;
    if (primary != null) data['primary'] = primary;

    return data;
  }
}
