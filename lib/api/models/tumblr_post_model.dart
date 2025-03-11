/// Represents a Tumblr post in NPF (Neue Post Format)
class TumblrPost {
  final String id;
  final TumblrBlog blog;
  final List<ContentBlock> content;
  final List<LayoutBlock>? layout;
  final List<dynamic>? trail;
  final DateTime timestamp;
  final String postUrl;
  final List<String>? tags;
  final bool isReblog;
  final String? summary;

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
          [],
      trail: json['trail'] as List<dynamic>?,
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp'] * 1000),
      postUrl: json['post_url'] ?? '',
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
      isReblog: json['parent_post_url'] != null,
      summary: json['summary'],
    );
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
}

/// Base class for all content blocks
abstract class ContentBlock {
  final String type;

  ContentBlock({required this.type});
}

/// Factory to create the appropriate content block based on type
class ContentBlockFactory {
  static ContentBlock createFromJson(Map<String, dynamic> json) {
    final type = json['type'];

    switch (type) {
      case 'text':
        return TextBlock.fromJson(json);
      case 'image':
        return ImageBlock.fromJson(json);
      case 'link':
        return LinkBlock.fromJson(json);
      case 'audio':
        return AudioBlock.fromJson(json);
      case 'video':
        return VideoBlock.fromJson(json);
      case 'paywall':
        return PaywallBlock.fromJson(json);
      default:
        return UnknownBlock(type: type);
    }
  }
}

/// Text content block
class TextBlock extends ContentBlock {
  final String text;
  final String? subtype;
  final int? indentLevel;
  final List<TextFormat>? formatting;

  TextBlock({
    required this.text,
    this.subtype,
    this.indentLevel,
    this.formatting,
  }) : super(type: 'text');

  factory TextBlock.fromJson(Map<String, dynamic> json) {
    return TextBlock(
      text: json['text'] ?? '',
      subtype: json['subtype'],
      indentLevel: json['indent_level'],
      formatting: json['formatting'] != null
          ? (json['formatting'] as List)
              .map((format) => TextFormat.fromJson(format))
              .toList()
          : null,
    );
  }
}

/// Text formatting for inline styles
class TextFormat {
  final int start;
  final int end;
  final String type;
  final String? url;
  final Map<String, dynamic>? blog;
  final String? hex;

  TextFormat({
    required this.start,
    required this.end,
    required this.type,
    this.url,
    this.blog,
    this.hex,
  });

  factory TextFormat.fromJson(Map<String, dynamic> json) {
    return TextFormat(
      start: json['start'],
      end: json['end'],
      type: json['type'],
      url: json['url'],
      blog: json['blog'],
      hex: json['hex'],
    );
  }
}

/// Media object used in various content blocks
class MediaObject {
  final String url;
  final String type;
  final int? width;
  final int? height;
  final bool? originalDimensionsMissing;
  final bool? cropped;
  final bool? hasOriginalDimensions;
  final MediaObject? poster;
  final Map<String, String>? colors;

  MediaObject({
    required this.url,
    required this.type,
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
      poster:
          json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      colors: json['colors'] != null
          ? Map<String, String>.from(json['colors'])
          : null,
    );
  }
}

/// Image content block
class ImageBlock extends ContentBlock {
  final List<MediaObject> media;
  final Map<String, String>? colors;
  final String? feedbackToken;
  final MediaObject? poster;
  final Attribution? attribution;
  final String? altText;
  final String? caption;

  ImageBlock({
    required this.media,
    this.colors,
    this.feedbackToken,
    this.poster,
    this.attribution,
    this.altText,
    this.caption,
  }) : super(type: 'image');

  factory ImageBlock.fromJson(Map<String, dynamic> json) {
    return ImageBlock(
      media: (json['media'] as List)
          .map((media) => MediaObject.fromJson(media))
          .toList(),
      colors: json['colors'] != null
          ? Map<String, String>.from(json['colors'])
          : null,
      feedbackToken: json['feedback_token'],
      poster:
          json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      attribution: json['attribution'] != null
          ? Attribution.fromJson(json['attribution'])
          : null,
      altText: json['alt_text'],
      caption: json['caption'],
    );
  }
}

/// Link content block
class LinkBlock extends ContentBlock {
  final String url;
  final String? title;
  final String? description;
  final String? author;
  final String? siteName;
  final String? displayUrl;
  final List<MediaObject>? poster;

  LinkBlock({
    required this.url,
    this.title,
    this.description,
    this.author,
    this.siteName,
    this.displayUrl,
    this.poster,
  }) : super(type: 'link');

  factory LinkBlock.fromJson(Map<String, dynamic> json) {
    return LinkBlock(
      url: json['url'],
      title: json['title'],
      description: json['description'],
      author: json['author'],
      siteName: json['site_name'],
      displayUrl: json['display_url'],
      poster: json['poster'] != null
          ? (json['poster'] is List
              ? (json['poster'] as List)
                  .map((p) => MediaObject.fromJson(p))
                  .toList()
              : [MediaObject.fromJson(json['poster'])])
          : null,
    );
  }
}

/// Audio content block
class AudioBlock extends ContentBlock {
  final String? url;
  final MediaObject? media;
  final String? provider;
  final String? title;
  final String? artist;
  final String? album;
  final List<MediaObject>? poster;
  final String? embedHtml;
  final String? embedUrl;
  final Map<String, dynamic>? metadata;
  final Attribution? attribution;

  AudioBlock({
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

  factory AudioBlock.fromJson(Map<String, dynamic> json) {
    return AudioBlock(
      url: json['url'],
      media: json['media'] != null ? MediaObject.fromJson(json['media']) : null,
      provider: json['provider'],
      title: json['title'],
      artist: json['artist'],
      album: json['album'],
      poster: json['poster'] != null
          ? (json['poster'] is List
              ? (json['poster'] as List)
                  .map((p) => MediaObject.fromJson(p))
                  .toList()
              : [MediaObject.fromJson(json['poster'])])
          : null,
      embedHtml: json['embed_html'],
      embedUrl: json['embed_url'],
      metadata: json['metadata'],
      attribution: json['attribution'] != null
          ? Attribution.fromJson(json['attribution'])
          : null,
    );
  }
}

/// Video content block
class VideoBlock extends ContentBlock {
  final String? url;
  final MediaObject? media;
  final String? provider;
  final List<MediaObject>? poster;
  final String? embedHtml;
  final String? embedUrl;
  final Map<String, dynamic>? embedIframe;
  final Map<String, dynamic>? metadata;
  final Attribution? attribution;
  final bool? canAutoplayOnCellular;

  VideoBlock({
    this.url,
    this.media,
    this.provider,
    this.poster,
    this.embedHtml,
    this.embedUrl,
    this.embedIframe,
    this.metadata,
    this.attribution,
    this.canAutoplayOnCellular,
  }) : super(type: 'video');

  factory VideoBlock.fromJson(Map<String, dynamic> json) {
    return VideoBlock(
      url: json['url'],
      media: json['media'] != null ? MediaObject.fromJson(json['media']) : null,
      provider: json['provider'],
      poster: json['poster'] != null
          ? (json['poster'] is List
              ? (json['poster'] as List)
                  .map((p) => MediaObject.fromJson(p))
                  .toList()
              : [MediaObject.fromJson(json['poster'])])
          : null,
      embedHtml: json['embed_html'],
      embedUrl: json['embed_url'],
      embedIframe: json['embed_iframe'],
      metadata: json['metadata'],
      attribution: json['attribution'] != null
          ? Attribution.fromJson(json['attribution'])
          : null,
      canAutoplayOnCellular: json['can_autoplay_on_cellular'],
    );
  }
}

/// Paywall content block
class PaywallBlock extends ContentBlock {
  final String? url;
  final String? subtype;
  final String? title;
  final String? text;
  final bool? isVisible;

  PaywallBlock({
    this.url,
    this.subtype,
    this.title,
    this.text,
    this.isVisible,
  }) : super(type: 'paywall');

  factory PaywallBlock.fromJson(Map<String, dynamic> json) {
    return PaywallBlock(
      url: json['url'],
      subtype: json['subtype'],
      title: json['title'],
      text: json['text'],
      isVisible: json['is_visible'],
    );
  }
}

/// Unknown content block type
class UnknownBlock extends ContentBlock {
  UnknownBlock({required String type}) : super(type: type);
}

/// Base class for layout blocks
abstract class LayoutBlock {
  final String type;

  LayoutBlock({required this.type});
}

/// Factory to create the appropriate layout block based on type
class LayoutBlockFactory {
  static LayoutBlock createFromJson(Map<String, dynamic> json) {
    final type = json['type'];

    switch (type) {
      case 'rows':
        return RowsLayout.fromJson(json);
      case 'condensed':
        return CondensedLayout.fromJson(json);
      case 'ask':
        return AskLayout.fromJson(json);
      default:
        return UnknownLayout(type: type);
    }
  }
}

/// Rows layout block
class RowsLayout extends LayoutBlock {
  final List<DisplayRow> display;
  final int? truncateAfter;

  RowsLayout({
    required this.display,
    this.truncateAfter,
  }) : super(type: 'rows');

  factory RowsLayout.fromJson(Map<String, dynamic> json) {
    return RowsLayout(
      display: (json['display'] as List)
          .map((row) => DisplayRow.fromJson(row))
          .toList(),
      truncateAfter: json['truncate_after'],
    );
  }
}

/// Display row for rows layout
class DisplayRow {
  final List<int> blocks;
  final DisplayMode? mode;

  DisplayRow({
    required this.blocks,
    this.mode,
  });

  factory DisplayRow.fromJson(Map<String, dynamic> json) {
    return DisplayRow(
      blocks: List<int>.from(json['blocks']),
      mode: json['mode'] != null ? DisplayMode.fromJson(json['mode']) : null,
    );
  }
}

/// Display mode for rows layout
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
}

/// Condensed layout block
class CondensedLayout extends LayoutBlock {
  final int? truncateAfter;
  final List<int>? blocks;

  CondensedLayout({
    this.truncateAfter,
    this.blocks,
  }) : super(type: 'condensed');

  factory CondensedLayout.fromJson(Map<String, dynamic> json) {
    return CondensedLayout(
      truncateAfter: json['truncate_after'],
      blocks: json['blocks'] != null ? List<int>.from(json['blocks']) : null,
    );
  }
}

/// Ask layout block
class AskLayout extends LayoutBlock {
  final List<int> blocks;
  final Attribution? attribution;

  AskLayout({
    required this.blocks,
    this.attribution,
  }) : super(type: 'ask');

  factory AskLayout.fromJson(Map<String, dynamic> json) {
    return AskLayout(
      blocks: List<int>.from(json['blocks']),
      attribution: json['attribution'] != null
          ? Attribution.fromJson(json['attribution'])
          : null,
    );
  }
}

/// Unknown layout block type
class UnknownLayout extends LayoutBlock {
  UnknownLayout({required String type}) : super(type: type);
}

/// Attribution object for various content blocks
class Attribution {
  final String type;
  final String? url;
  final Map<String, dynamic>? post;
  final Map<String, dynamic>? blog;
  final String? appName;
  final String? displayText;
  final MediaObject? logo;

  Attribution({
    required this.type,
    this.url,
    this.post,
    this.blog,
    this.appName,
    this.displayText,
    this.logo,
  });

  factory Attribution.fromJson(Map<String, dynamic> json) {
    return Attribution(
      type: json['type'],
      url: json['url'],
      post: json['post'],
      blog: json['blog'],
      appName: json['app_name'],
      displayText: json['display_text'],
      logo: json['logo'] != null ? MediaObject.fromJson(json['logo']) : null,
    );
  }
}

/// Reblog trail item
class TrailItem {
  final Map<String, dynamic>? post;
  final Map<String, dynamic>? blog;
  final List<ContentBlock> content;
  final List<LayoutBlock>? layout;
  final String? brokenBlogName;

  TrailItem({
    this.post,
    this.blog,
    required this.content,
    this.layout,
    this.brokenBlogName,
  });

  factory TrailItem.fromJson(Map<String, dynamic> json) {
    return TrailItem(
      post: json['post'],
      blog: json['blog'],
      content: (json['content'] as List)
          .map((block) => ContentBlockFactory.createFromJson(block))
          .toList(),
      layout: json['layout'] != null
          ? (json['layout'] as List)
              .map((layout) => LayoutBlockFactory.createFromJson(layout))
              .toList()
          : null,
      brokenBlogName: json['broken_blog_name'],
    );
  }
}
