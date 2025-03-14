import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';

/// Reblog trail item
class ReblogTrailItem {
  final PostDetails? post;
  final TumblrBlog? blog;
  final List<ContentBlock> content;
  final List<LayoutBlock>? layout;
  final String? brokenBlogName;

  ReblogTrailItem({
    this.post,
    this.blog,
    required this.content,
    this.layout,
    this.brokenBlogName,
  });

  factory ReblogTrailItem.fromJson(Map<String, dynamic> json) {
    return ReblogTrailItem(
      post: json['post'] != null ? PostDetails.fromJson(json['post']) : null,
      blog: json['blog'] != null ? TumblrBlog.fromJson(json['blog']) : null,
      content: json['content'] is List
          ? (json['content'] as List)
              .map((block) => ContentBlockFactory.createFromJson(block))
              .toList()
          : [],
      layout: json['layout'] is List
          ? (json['layout'] as List)
              .map((layout) => LayoutBlockFactory.createFromJson(layout))
              .toList()
          : null,
      brokenBlogName: json['broken_blog_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'content': content.map((block) => block.toJson()).toList(),
    };

    if (post != null) data['post'] = post!.toJson();
    if (blog != null) data['blog'] = blog!.toJson();
    if (layout != null)
      data['layout'] = layout!.map((block) => block.toJson()).toList();
    if (brokenBlogName != null) data['broken_blog_name'] = brokenBlogName;

    return data;
  }
}
