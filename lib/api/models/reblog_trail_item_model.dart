import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reblog_trail_item_model.freezed.dart';
part 'reblog_trail_item_model.g.dart';

/// Reblog trail item
@freezed
class ReblogTrailItem with _$ReblogTrailItem {
  const factory ReblogTrailItem({
    PostDetails? post,
    TumblrBlog? blog,
    required List<ContentBlock> content,
    List<LayoutBlock>? layout,
    String? brokenBlogName,
  }) = _ReblogTrailItem;

  factory ReblogTrailItem.fromJson(Map<String, dynamic> json) => 
      _$ReblogTrailItemFromJson(json);
}
