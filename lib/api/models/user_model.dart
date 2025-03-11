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
  final String? tweet;
  final String type;
  final String? description;
  final bool? ask;
  final bool? askAnon;
  final int? posts;
  final int? updated;
  final bool? followed;
  final int? likes;
  final bool? isBlockedFromPrimary;
  final List<Map<String, dynamic>>? avatar;
  final Map<String, dynamic>? theme;

  TumblrBlog({
    required this.name,
    required this.url,
    required this.title,
    required this.primary,
    required this.followers,
    this.tweet,
    required this.type,
    this.description,
    this.ask,
    this.askAnon,
    this.posts,
    this.updated,
    this.followed,
    this.likes,
    this.isBlockedFromPrimary,
    this.avatar,
    this.theme,
  });

  factory TumblrBlog.fromJson(Map<String, dynamic> json) {
    return TumblrBlog(
      name: json['name'] as String,
      url: json['url'] as String,
      title: json['title'] as String,
      primary: json['primary'] as bool,
      followers: json['followers'] as int,
      tweet: json['tweet'] as String?,
      type: json['type'] as String,
      description: json['description'] as String?,
      ask: json['ask'] as bool?,
      askAnon: json['ask_anon'] as bool?,
      posts: json['posts'] as int?,
      updated: json['updated'] as int?,
      followed: json['followed'] as bool?,
      likes: json['likes'] as int?,
      isBlockedFromPrimary: json['is_blocked_from_primary'] as bool?,
      avatar: json['avatar'] != null ? List<Map<String, dynamic>>.from(json['avatar']) : null,
      theme: json['theme'] as Map<String, dynamic>?,
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
      'description': description,
      'ask': ask,
      'ask_anon': askAnon,
      'posts': posts,
      'updated': updated,
      'followed': followed,
      'likes': likes,
      'is_blocked_from_primary': isBlockedFromPrimary,
      'avatar': avatar,
      'theme': theme,
    };
  }
}
