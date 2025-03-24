import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tumblr_api/api/models/blog_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// Represents a Tumblr user
@freezed
class TumblrUser with _$TumblrUser {
  const TumblrUser._();

  const factory TumblrUser({
    int? following,
    String? defaultPostFormat,
    String? name,
    int? likes,
    List<TumblrBlog>? blogs,
  }) = _TumblrUser;

  factory TumblrUser.fromJson(Map<String, dynamic> json) =>
      _$TumblrUserFromJson(json);
}
