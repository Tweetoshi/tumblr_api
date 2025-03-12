import 'package:tumblr_api/api/models/tumblr_post_model.dart';

class TumblrUser {
  final int? following;
  final String? defaultPostFormat;
  final String? name;
  final int? likes;
  final List<TumblrBlog>? blogs;

  TumblrUser({
    required this.following,
    required this.defaultPostFormat,
    required this.name,
    required this.likes,
    required this.blogs,
  });

  factory TumblrUser.fromJson(Map<String, dynamic> json) {
    return TumblrUser(
      following: json['following'] as int?,
      defaultPostFormat: json['default_post_format'] as String?,
      name: json['name'] as String?,
      likes: json['likes'] as int?,
      blogs: (json['blogs'] as List?)
          ?.map((blogJson) => TumblrBlog.fromJson(blogJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'following': following,
      'default_post_format': defaultPostFormat,
      'name': name,
      'likes': likes,
      'blogs': blogs?.map((blog) => blog.toJson()).toList(),
    };
  }
}
