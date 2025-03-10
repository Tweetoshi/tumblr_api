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

class TumblrBlog {
  final String name;
  final String url;
  final String title;
  final bool primary;
  final int followers;
  final String tweet;
  final String type;

  TumblrBlog({
    required this.name,
    required this.url,
    required this.title,
    required this.primary,
    required this.followers,
    required this.tweet,
    required this.type,
  });

  factory TumblrBlog.fromJson(Map<String, dynamic> json) {
    return TumblrBlog(
      name: json['name'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      primary: json['primary'] as bool,
      followers: json['followers'] as int,
      tweet: json['tweet'] as String,
      type: json['type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
      'title': title,
      'primary': primary,
      'followers': followers,
      'tweet': tweet,
      'type': type,
    };
  }
}
