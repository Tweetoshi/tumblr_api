import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/reblog_trail_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tumblr_post_model.freezed.dart';
part 'tumblr_post_model.g.dart';

class StringFromIntConverter implements JsonConverter<String, dynamic> {
  const StringFromIntConverter();

  @override
  String fromJson(dynamic value) => value.toString();

  @override
  dynamic toJson(String value) => value;
}

/// Represents a Tumblr post
@freezed
class TumblrPost with _$TumblrPost {
  const TumblrPost._();

  const factory TumblrPost({
    @StringFromIntConverter() required String id,
    required TumblrBlog blog,
    TumblrBlog? authorBlog,
    required List<ContentBlock> content,
    List<LayoutBlock>? layout,
    List<ReblogTrailItem>? trail,
    required int timestamp,
    required String postUrl,
    List<String>? tags,
    String? reblogKey,
    String? summary,
    bool? isPaywalled,
    String? paywallAccess,
    @Default(false) bool liked,
    @Default(false) bool followed,
    int? noteCount,
    Map<String, dynamic>? paywallReblogView,
    Map<String, dynamic>? subscriptionPlan,
    @Default(true) bool canLike,
    @Default(true) bool canReblog,
    @Default(false) bool canSendInMessage,
  }) = _TumblrPost;

  factory TumblrPost.fromJson(Map<String, dynamic> json) =>
      _$TumblrPostFromJson(json);
}

/// Details about a Tumblr post used in attribution
@freezed
class PostDetails with _$PostDetails {
  const PostDetails._();

  const factory PostDetails({
    String? id,
    int? timestamp,
    bool? isCommercial,
    bool? isPaywalled,
    String? paywallAccess,
  }) = _PostDetails;

  factory PostDetails.fromJson(Map<String, dynamic> json) =>
      _$PostDetailsFromJson(json);
}
