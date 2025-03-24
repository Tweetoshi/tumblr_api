import 'package:tumblr_api/api/models/avatar_image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

/// Represents a Tumblr blog
@freezed
class TumblrBlog with _$TumblrBlog {
  const TumblrBlog._();

  const factory TumblrBlog({
    required String uuid,
    required String name,
    String? title,
    required String? url,
    List<AvatarImage>? avatar,
    String? description,
    int? followers,
    bool? followed,
    @Default(false) bool? primary,
  }) = _TumblrBlog;

  factory TumblrBlog.fromJson(Map<String, dynamic> json) =>
      _$TumblrBlogFromJson(json);
}
