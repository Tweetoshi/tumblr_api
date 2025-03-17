import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/content_block_model.dart';
import 'package:tumblr_api/api/models/media_object.dart';
import 'package:tumblr_api/api/models/reblog_trail_item_model.dart';

/// Represents a Tumblr post in NPF (Neue Post Format)
class TumblrPost {
  final String id;
  final TumblrBlog blog;
  final TumblrBlog? authorBlog;
  final List<ContentBlock> content;
  final List<LayoutBlock>? layout;
  final List<ReblogTrailItem>? trail;
  final int timestamp;
  final String postUrl;
  final List<String>? tags;
  final bool isReblog;
  final String? summary;
  final bool? isPaywalled;
  final String? paywallAccess;
  final int? noteCount;
  final Map<String, dynamic>? paywallReblogView;
  final Map<String, dynamic>? subscriptionPlan;

  TumblrPost({
    required this.id,
    required this.blog,
    required this.authorBlog,
    required this.content,
    this.layout,
    this.trail,
    required this.timestamp,
    required this.postUrl,
    this.tags,
    this.isReblog = false,
    this.summary,
    this.isPaywalled,
    this.paywallAccess,
    this.noteCount,
    this.paywallReblogView,
    this.subscriptionPlan,
  });

  factory TumblrPost.fromJson(Map<String, dynamic> json) {
    return TumblrPost(
      id: json['id'].toString(),
      blog: TumblrBlog.fromJson(json['blog']),
      content: (json['content'] as List?)
              ?.map((block) => ContentBlockFactory.createFromJson(block))
              .toList() ??
          [],
      layout: (json['layout'] as List?)
              ?.map((layout) => LayoutBlockFactory.createFromJson(layout))
              .toList() ??
          null,
      trail: (json['trail'] as List?)
              ?.map((item) => ReblogTrailItem.fromJson(item))
              .toList() ??
          null,
      authorBlog: json['author_blog'] != null
          ? TumblrBlog.fromJson(json['author_blog'])
          : null,
      timestamp: json['timestamp'] ?? 0,
      postUrl: json['post_url'] ?? '',
      tags: (json['tags'] as List?)?.map((tag) => tag.toString()).toList(),
      isReblog: json['is_reblog'] ?? false,
      summary: json['summary'],
      isPaywalled: json['is_paywalled'],
      paywallAccess: json['paywall_access'],
      paywallReblogView: json['paywall_reblog_view'],
      subscriptionPlan: json['blog']?['subscription_plan'],
      noteCount: json['note_count'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'blog': blog.toJson(),
      'content': content.map((block) => block.toJson()).toList(),
      'timestamp': timestamp,
      'post_url': postUrl,
    };

    if (layout != null) {
      data['layout'] = layout!.map((block) => block.toJson()).toList();
    }
    if (trail != null) {
      data['trail'] = trail!.map((item) => item.toJson()).toList();
    }
    if (tags != null) {
      data['tags'] = tags;
    }
    if (isReblog) {
      data['is_reblog'] = isReblog;
    }
    if (summary != null) {
      data['summary'] = summary;
    }
    if (isPaywalled != null) {
      data['is_paywalled'] = isPaywalled;
    }
    if (paywallAccess != null) {
      data['paywall_access'] = paywallAccess;
    }

    return data;
  }
}

/// Attribution object for various content blocks
class AttributionObject {
  final String type;
  final String? url;
  final PostDetails? post;
  final TumblrBlog? blog;
  final String? appName;
  final String? displayText;
  final MediaObject? logo;

  AttributionObject({
    required this.type,
    this.url,
    this.post,
    this.blog,
    this.appName,
    this.displayText,
    this.logo,
  });

  factory AttributionObject.fromJson(Map<String, dynamic> json) {
    return AttributionObject(
      type: json['type'],
      url: json['url'],
      post: json['post'] != null ? PostDetails.fromJson(json['post']) : null,
      blog: json['blog'] != null ? TumblrBlog.fromJson(json['blog']) : null,
      appName: json['app_name'],
      displayText: json['display_text'],
      logo: json['logo'] != null ? MediaObject.fromJson(json['logo']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
    };

    if (url != null) data['url'] = url;
    if (post != null) data['post'] = post!.toJson();
    if (blog != null) data['blog'] = blog!.toJson();
    if (appName != null) data['app_name'] = appName;
    if (displayText != null) data['display_text'] = displayText;
    if (logo != null) data['logo'] = logo!.toJson();

    return data;
  }
}

/// Post Info for reblog trail
class PostDetails {
  final String? id;
  final int? timestamp;
  final bool? isCommercial;
  final bool? isPaywalled;
  final String? paywallAccess;

  PostDetails({
    this.id,
    this.timestamp,
    this.isCommercial,
    this.isPaywalled,
    this.paywallAccess,
  });

  factory PostDetails.fromJson(Map<String, dynamic> json) {
    return PostDetails(
      id: json['id']?.toString(),
      timestamp: json['timestamp'],
      isCommercial: json['is_commercial'],
      isPaywalled: json['is_paywalled'],
      paywallAccess: json['paywall_access'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (id != null) data['id'] = id;
    if (timestamp != null) data['timestamp'] = timestamp;
    if (isCommercial != null) data['is_commercial'] = isCommercial;
    if (isPaywalled != null) data['is_paywalled'] = isPaywalled;
    if (paywallAccess != null) data['paywall_access'] = paywallAccess;

    return data;
  }
}
