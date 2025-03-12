/// Represents a Tumblr post in NPF (Neue Post Format)
class TumblrPost {
  final String id;
  final TumblrBlog blog;
  final List<ContentBlock> content;
  final List<LayoutBlock>? layout;
  final List<ReblogTrailItem>? trail;
  final int timestamp;
  final String postUrl;
  final List<String>? tags;
  final bool isReblog;
  final String? summary;
  final bool? isPaywalled;
  final String? paywallAccess; // "creator", "member", "non-member", "disabled"
  final Map<String, dynamic>? paywallReblogView;
  final Map<String, dynamic>? subscriptionPlan;

  TumblrPost({
    required this.id,
    required this.blog,
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
      timestamp: json['timestamp'] ?? 0,
      postUrl: json['post_url'] ?? '',
      tags: (json['tags'] as List?)?.map((tag) => tag.toString()).toList(),
      isReblog: json['is_reblog'] ?? false,
      summary: json['summary'],
      isPaywalled: json['is_paywalled'],
      paywallAccess: json['paywall_access'],
      paywallReblogView: json['paywall_reblog_view'],
      subscriptionPlan: json['blog']?['subscription_plan'],
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

/// Represents a Tumblr blog
class TumblrBlog {
  final String uuid;
  final String name;
  final String? title;
  final String url;
  final List<AvatarImage>? avatar;

  TumblrBlog({
    required this.uuid,
    required this.name,
    this.title,
    required this.url,
    this.avatar,
  });

  factory TumblrBlog.fromJson(Map<String, dynamic> json) {
    return TumblrBlog(
      uuid: json['uuid'] ?? '',
      name: json['name'] ?? '',
      title: json['title'],
      url: json['url'] ?? '',
      avatar: json['avatar'] != null
          ? (json['avatar'] as List)
              .map((img) => AvatarImage.fromJson(img))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'uuid': uuid,
      'name': name,
    };
    
    if (title != null) data['title'] = title;
    if (url != null) data['url'] = url;
    if (avatar != null) data['avatar'] = avatar!.map((img) => img.toJson()).toList();
    
    return data;
  }
}

class AvatarImage {
  final String url;
  final int? width;
  final int? height;

  AvatarImage({
    required this.url,
    this.width,
    this.height,
  });

  factory AvatarImage.fromJson(Map<String, dynamic> json) {
    return AvatarImage(
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'url': url,
    };
    
    if (width != null) data['width'] = width;
    if (height != null) data['height'] = height;
    
    return data;
  }
}

/// Base class for all content blocks
abstract class ContentBlock {
  final String type;

  ContentBlock({required this.type});

  Map<String, dynamic> toJson();
}

/// Factory to create the appropriate content block based on type
class ContentBlockFactory {
  static ContentBlock createFromJson(Map<String, dynamic> json) {
    final String type = json['type'];
    
    switch (type) {
      case 'text':
        return TextContentBlock.fromJson(json);
      case 'image':
        return ImageContentBlock.fromJson(json);
      case 'link':
        return LinkContentBlock.fromJson(json);
      case 'audio':
        return AudioContentBlock.fromJson(json);
      case 'video':
        return VideoContentBlock.fromJson(json);
      case 'paywall':
        return PaywallContentBlock.fromJson(json);
      default:
        // Return a generic ContentBlock for unknown types
        return GenericContentBlock.fromJson(json);
    }
  }
}

/// Text content block
class TextContentBlock extends ContentBlock {
  final String text;
  final String? subtype;
  final int? indentLevel;
  final List<TextFormatting>? formatting;

  TextContentBlock({
    required this.text,
    this.subtype,
    this.indentLevel,
    this.formatting,
  }) : super(type: 'text');

  factory TextContentBlock.fromJson(Map<String, dynamic> json) {
    return TextContentBlock(
      text: json['text'],
      subtype: json['subtype'],
      indentLevel: json['indent_level'],
      formatting: (json['formatting'] as List?)
          ?.map((format) => TextFormatting.fromJson(format))
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'text': text,
    };
    
    if (subtype != null) data['subtype'] = subtype;
    if (indentLevel != null) data['indent_level'] = indentLevel;
    if (formatting != null) data['formatting'] = formatting!.map((f) => f.toJson()).toList();
    
    return data;
  }
}

/// Text formatting for inline styles
class TextFormatting {
  final int start;
  final int end;
  final String type;
  final String? url;
  final Map<String, dynamic>? blog;
  final String? hex;

  TextFormatting({
    required this.start,
    required this.end,
    required this.type,
    this.url,
    this.blog,
    this.hex,
  });

  factory TextFormatting.fromJson(Map<String, dynamic> json) {
    return TextFormatting(
      start: json['start'],
      end: json['end'],
      type: json['type'],
      url: json['url'],
      blog: json['blog'],
      hex: json['hex'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'start': start,
      'end': end,
      'type': type,
    };
    
    if (url != null) data['url'] = url;
    if (blog != null) data['blog'] = blog;
    if (hex != null) data['hex'] = hex;
    
    return data;
  }
}

/// Media object used in various content blocks
class MediaObject {
  final String url;
  final String? type;
  final int? width;
  final int? height;
  final bool? originalDimensionsMissing;
  final bool? cropped;
  final bool? hasOriginalDimensions;
  final MediaObject? poster;
  final Map<String, String>? colors;

  MediaObject({
    required this.url,
    this.type,
    this.width,
    this.height,
    this.originalDimensionsMissing,
    this.cropped,
    this.hasOriginalDimensions,
    this.poster,
    this.colors,
  });

  factory MediaObject.fromJson(Map<String, dynamic> json) {
    return MediaObject(
      url: json['url'],
      type: json['type'],
      width: json['width'],
      height: json['height'],
      originalDimensionsMissing: json['original_dimensions_missing'],
      cropped: json['cropped'],
      hasOriginalDimensions: json['has_original_dimensions'],
      poster: json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      colors: json['colors'] != null ? Map<String, String>.from(json['colors']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'url': url,
    };
    
    if (type != null) data['type'] = type;
    if (width != null) data['width'] = width;
    if (height != null) data['height'] = height;
    if (originalDimensionsMissing != null) data['original_dimensions_missing'] = originalDimensionsMissing;
    if (cropped != null) data['cropped'] = cropped;
    if (hasOriginalDimensions != null) data['has_original_dimensions'] = hasOriginalDimensions;
    if (poster != null) data['poster'] = poster!.toJson();
    if (colors != null) data['colors'] = colors;
    
    return data;
  }
}

/// Image content block
class ImageContentBlock extends ContentBlock {
  final List<MediaObject> media;
  final Map<String, String>? colors;
  final String? feedbackToken;
  final MediaObject? poster;
  final AttributionObject? attribution;
  final String? altText;
  final String? caption;

  ImageContentBlock({
    required this.media,
    this.colors,
    this.feedbackToken,
    this.poster,
    this.attribution,
    this.altText,
    this.caption,
  }) : super(type: 'image');

  factory ImageContentBlock.fromJson(Map<String, dynamic> json) {
    return ImageContentBlock(
      media: (json['media'] as List).map((m) => MediaObject.fromJson(m)).toList(),
      colors: json['colors'] != null ? Map<String, String>.from(json['colors']) : null,
      feedbackToken: json['feedback_token'],
      poster: json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      attribution: json['attribution'] != null ? AttributionObject.fromJson(json['attribution']) : null,
      altText: json['alt_text'],
      caption: json['caption'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'media': media.map((m) => m.toJson()).toList(),
    };
    
    if (colors != null) data['colors'] = colors;
    if (feedbackToken != null) data['feedback_token'] = feedbackToken;
    if (poster != null) data['poster'] = poster!.toJson();
    if (attribution != null) data['attribution'] = attribution!.toJson();
    if (altText != null) data['alt_text'] = altText;
    if (caption != null) data['caption'] = caption;
    
    return data;
  }
}

/// Link content block
class LinkContentBlock extends ContentBlock {
  final String url;
  final String? title;
  final String? description;
  final String? author;
  final String? siteName;
  final String? displayUrl;
  final MediaObject? poster;

  LinkContentBlock({
    required this.url,
    this.title,
    this.description,
    this.author,
    this.siteName,
    this.displayUrl,
    this.poster,
  }) : super(type: 'link');

  factory LinkContentBlock.fromJson(Map<String, dynamic> json) {
    return LinkContentBlock(
      url: json['url'],
      title: json['title'],
      description: json['description'],
      author: json['author'],
      siteName: json['site_name'],
      displayUrl: json['display_url'],
      poster: json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'url': url,
    };
    
    if (title != null) data['title'] = title;
    if (description != null) data['description'] = description;
    if (author != null) data['author'] = author;
    if (siteName != null) data['site_name'] = siteName;
    if (displayUrl != null) data['display_url'] = displayUrl;
    if (poster != null) data['poster'] = poster!.toJson();
    
    return data;
  }
}

/// Audio content block
class AudioContentBlock extends ContentBlock {
  final String? url;
  final MediaObject? media;
  final String? provider;
  final String? title;
  final String? artist;
  final String? album;
  final MediaObject? poster;
  final String? embedHtml;
  final String? embedUrl;
  final Map<String, dynamic>? metadata;
  final AttributionObject? attribution;

  AudioContentBlock({
    this.url,
    this.media,
    this.provider,
    this.title,
    this.artist,
    this.album,
    this.poster,
    this.embedHtml,
    this.embedUrl,
    this.metadata,
    this.attribution,
  }) : super(type: 'audio');

  factory AudioContentBlock.fromJson(Map<String, dynamic> json) {
    return AudioContentBlock(
      url: json['url'],
      media: json['media'] != null ? MediaObject.fromJson(json['media']) : null,
      provider: json['provider'],
      title: json['title'],
      artist: json['artist'],
      album: json['album'],
      poster: json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      embedHtml: json['embed_html'],
      embedUrl: json['embed_url'],
      metadata: json['metadata'],
      attribution: json['attribution'] != null ? AttributionObject.fromJson(json['attribution']) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
    };
    
    if (url != null) data['url'] = url;
    if (media != null) data['media'] = media!.toJson();
    if (provider != null) data['provider'] = provider;
    if (title != null) data['title'] = title;
    if (artist != null) data['artist'] = artist;
    if (album != null) data['album'] = album;
    if (poster != null) data['poster'] = poster!.toJson();
    if (embedHtml != null) data['embed_html'] = embedHtml;
    if (embedUrl != null) data['embed_url'] = embedUrl;
    if (metadata != null) data['metadata'] = metadata;
    if (attribution != null) data['attribution'] = attribution!.toJson();
    
    return data;
  }
}

/// Video content block
class VideoContentBlock extends ContentBlock {
  final String? url;
  final MediaObject? media;
  final String? provider;
  final String? embedHtml;
  final EmbedIframeObject? embedIframe;
  final String? embedUrl;
  final MediaObject? poster;
  final Map<String, dynamic>? metadata;
  final AttributionObject? attribution;
  final bool? canAutoplayOnCellular;
  final int? duration;

  VideoContentBlock({
    this.url,
    this.media,
    this.provider,
    this.embedHtml,
    this.embedIframe,
    this.embedUrl,
    this.poster,
    this.metadata,
    this.attribution,
    this.canAutoplayOnCellular,
    this.duration,
  }) : super(type: 'video');

  factory VideoContentBlock.fromJson(Map<String, dynamic> json) {
    return VideoContentBlock(
      url: json['url'],
      media: json['media'] != null ? MediaObject.fromJson(json['media']) : null,
      provider: json['provider'],
      embedHtml: json['embed_html'],
      embedIframe: json['embed_iframe'] != null ? EmbedIframeObject.fromJson(json['embed_iframe']) : null,
      embedUrl: json['embed_url'],
      poster: json['poster'] != null ? 
              (json['poster'] is List ? 
                MediaObject.fromJson(json['poster'][0]) : 
                MediaObject.fromJson(json['poster'])) : 
              null,
      metadata: json['metadata'],
      attribution: json['attribution'] != null ? AttributionObject.fromJson(json['attribution']) : null,
      canAutoplayOnCellular: json['can_autoplay_on_cellular'],
      duration: json['duration'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
    };
    
    if (url != null) data['url'] = url;
    if (media != null) data['media'] = media!.toJson();
    if (provider != null) data['provider'] = provider;
    if (embedHtml != null) data['embed_html'] = embedHtml;
    if (embedIframe != null) data['embed_iframe'] = embedIframe!.toJson();
    if (embedUrl != null) data['embed_url'] = embedUrl;
    if (poster != null) data['poster'] = poster!.toJson();
    if (metadata != null) data['metadata'] = metadata;
    if (attribution != null) data['attribution'] = attribution!.toJson();
    if (canAutoplayOnCellular != null) data['can_autoplay_on_cellular'] = canAutoplayOnCellular;
    if (duration != null) data['duration'] = duration;
    
    return data;
  }
}

/// Paywall content block
class PaywallContentBlock extends ContentBlock {
  final String subtype; // "cta", "divider", or "disabled"
  final String url;
  final String? title;
  final String text;
  final String? color;
  final bool? isVisible;

  PaywallContentBlock({
    required this.subtype,
    required this.url,
    this.title,
    required this.text,
    this.color,
    this.isVisible,
  }) : super(type: 'paywall');

  factory PaywallContentBlock.fromJson(Map<String, dynamic> json) {
    return PaywallContentBlock(
      subtype: json['subtype'],
      url: json['url'],
      title: json['title'],
      text: json['text'],
      color: json['color'],
      isVisible: json['is_visible'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'subtype': subtype,
      'url': url,
      'text': text,
    };
    
    if (title != null) data['title'] = title;
    if (color != null) data['color'] = color;
    if (isVisible != null) data['is_visible'] = isVisible;
    
    return data;
  }
}

/// Unknown content block type
class GenericContentBlock extends ContentBlock {
  final Map<String, dynamic> originalJson;

  GenericContentBlock({
    required String type,
    required this.originalJson,
  }) : super(type: type);

  factory GenericContentBlock.fromJson(Map<String, dynamic> json) {
    return GenericContentBlock(
      type: json['type'],
      originalJson: json,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return originalJson;
  }
}

/// Base class for layout blocks
abstract class LayoutBlock {
  final String type;

  LayoutBlock({required this.type});

  Map<String, dynamic> toJson();
}

/// Factory to create the appropriate layout block based on type
class LayoutBlockFactory {
  static LayoutBlock createFromJson(Map<String, dynamic> json) {
    final String type = json['type'];
    
    switch (type) {
      case 'rows':
        return RowsLayoutBlock.fromJson(json);
      case 'condensed':
        return CondensedLayoutBlock.fromJson(json);
      case 'ask':
        return AskLayoutBlock.fromJson(json);
      default:
        // Return a generic LayoutBlock for unknown types
        return GenericLayoutBlock.fromJson(json);
    }
  }
}

/// Rows layout block
class RowsLayoutBlock extends LayoutBlock {
  final List<DisplayObject> display;
  final int? truncateAfter;

  RowsLayoutBlock({
    required this.display,
    this.truncateAfter,
  }) : super(type: 'rows');

  factory RowsLayoutBlock.fromJson(Map<String, dynamic> json) {
    return RowsLayoutBlock(
      display: (json['display'] as List)
          .map((display) => DisplayObject.fromJson(display))
          .toList(),
      truncateAfter: json['truncate_after'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'display': display.map((d) => d.toJson()).toList(),
    };
    
    if (truncateAfter != null) data['truncate_after'] = truncateAfter;
    
    return data;
  }
}

/// Display object for RowsLayoutBlock
class DisplayObject {
  final List<int> blocks;
  final DisplayMode? mode;

  DisplayObject({
    required this.blocks,
    this.mode,
  });

  factory DisplayObject.fromJson(Map<String, dynamic> json) {
    return DisplayObject(
      blocks: List<int>.from(json['blocks']),
      mode: json['mode'] != null ? DisplayMode.fromJson(json['mode']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'blocks': blocks,
    };
    
    if (mode != null) data['mode'] = mode!.toJson();
    
    return data;
  }
}

/// Display mode for display object
class DisplayMode {
  final String type;

  DisplayMode({
    required this.type,
  });

  factory DisplayMode.fromJson(Map<String, dynamic> json) {
    return DisplayMode(
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
    };
  }
}

/// Condensed layout block
class CondensedLayoutBlock extends LayoutBlock {
  final int? truncateAfter;
  final List<int>? blocks;

  CondensedLayoutBlock({
    this.truncateAfter,
    this.blocks,
  }) : super(type: 'condensed');

  factory CondensedLayoutBlock.fromJson(Map<String, dynamic> json) {
    return CondensedLayoutBlock(
      truncateAfter: json['truncate_after'],
      blocks: json['blocks'] != null ? List<int>.from(json['blocks']) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
    };
    
    if (truncateAfter != null) data['truncate_after'] = truncateAfter;
    if (blocks != null) data['blocks'] = blocks;
    
    return data;
  }
}

/// Ask layout block
class AskLayoutBlock extends LayoutBlock {
  final List<int> blocks;
  final AttributionObject? attribution;

  AskLayoutBlock({
    required this.blocks,
    this.attribution,
  }) : super(type: 'ask');

  factory AskLayoutBlock.fromJson(Map<String, dynamic> json) {
    return AskLayoutBlock(
      blocks: List<int>.from(json['blocks']),
      attribution: json['attribution'] != null ? AttributionObject.fromJson(json['attribution']) : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'type': type,
      'blocks': blocks,
    };
    
    if (attribution != null) data['attribution'] = attribution!.toJson();
    
    return data;
  }
}

/// Unknown layout block type
class GenericLayoutBlock extends LayoutBlock {
  final Map<String, dynamic> originalJson;

  GenericLayoutBlock({
    required String type,
    required this.originalJson,
  }) : super(type: type);

  factory GenericLayoutBlock.fromJson(Map<String, dynamic> json) {
    return GenericLayoutBlock(
      type: json['type'],
      originalJson: json,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return originalJson;
  }
}

/// Attribution object for various content blocks
class AttributionObject {
  final String type;
  final String? url;
  final PostInfo? post;
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
      post: json['post'] != null ? PostInfo.fromJson(json['post']) : null,
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

/// Reblog trail item
class ReblogTrailItem {
  final PostInfo? post;
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
      post: json['post'] != null ? PostInfo.fromJson(json['post']) : null,
      blog: json['blog'] != null ? TumblrBlog.fromJson(json['blog']) : null,
      content: (json['content'] as List?)
              ?.map((block) => ContentBlockFactory.createFromJson(block))
              .toList() ??
          [],
      layout: (json['layout'] as List?)
              ?.map((layout) => LayoutBlockFactory.createFromJson(layout))
              .toList() ??
          null,
      brokenBlogName: json['broken_blog_name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'content': content.map((block) => block.toJson()).toList(),
    };
    
    if (post != null) data['post'] = post!.toJson();
    if (blog != null) data['blog'] = blog!.toJson();
    if (layout != null) data['layout'] = layout!.map((block) => block.toJson()).toList();
    if (brokenBlogName != null) data['broken_blog_name'] = brokenBlogName;
    
    return data;
  }
}

/// Post Info for reblog trail
class PostInfo {
  final String? id;
  final int? timestamp;
  final bool? isCommercial;
  final bool? isPaywalled;
  final String? paywallAccess;

  PostInfo({
    this.id,
    this.timestamp,
    this.isCommercial,
    this.isPaywalled,
    this.paywallAccess,
  });

  factory PostInfo.fromJson(Map<String, dynamic> json) {
    return PostInfo(
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

/// Embed Iframe Object for videos
class EmbedIframeObject {
  final String url;
  final int width;
  final int height;

  EmbedIframeObject({
    required this.url,
    required this.width,
    required this.height,
  });

  factory EmbedIframeObject.fromJson(Map<String, dynamic> json) {
    return EmbedIframeObject(
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'width': width,
      'height': height,
    };
  }
}
