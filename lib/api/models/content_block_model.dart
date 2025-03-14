import 'package:tumblr_api/api/models/embed_iframe_object.dart';
import 'package:tumblr_api/api/models/media_object.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';

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
    if (formatting != null)
      data['formatting'] = formatting!.map((f) => f.toJson()).toList();

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

/// Image content block
class ImageContentBlock extends ContentBlock {
  final List<MediaObject> media;
  final Map<String, String>? colors;
  final String? feedbackToken;
  final List<MediaObject>? poster;
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
      media:
          (json['media'] as List).map((m) => MediaObject.fromJson(m)).toList(),
      colors: json['colors'] != null
          ? Map<String, String>.from(json['colors'])
          : null,
      feedbackToken: json['feedback_token'],
      poster: json['poster'] != null
          ? (json['poster'] as List)
              .map((m) => MediaObject.fromJson(m))
              .toList()
          : null,
      attribution: json['attribution'] != null && json['attribution'] is Map
          ? AttributionObject.fromJson(json['attribution'])
          : null,
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
    if (poster != null)
      data['poster'] = poster!.map((m) => m.toJson()).toList();
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
  final List<MediaObject>? poster;

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
      poster: json['poster'] != null
          ? (json['poster'] as List)
              .map((m) => MediaObject.fromJson(m))
              .toList()
          : null,
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
    if (poster != null)
      data['poster'] = poster!.map((m) => m.toJson()).toList();

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
  final List<MediaObject>? poster;
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
      poster: json['poster'] != null
          ? (json['poster'] as List)
              .map((m) => MediaObject.fromJson(m))
              .toList()
          : null,
      embedHtml: json['embed_html'],
      embedUrl: json['embed_url'],
      metadata: json['metadata'],
      attribution: json['attribution'] != null && json['attribution'] is Map
          ? AttributionObject.fromJson(json['attribution'])
          : null,
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
    if (poster != null)
      data['poster'] = poster!.map((m) => m.toJson()).toList();
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
  final List<MediaObject>? poster;
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
      embedIframe: json['embed_iframe'] != null
          ? EmbedIframeObject.fromJson(json['embed_iframe'])
          : null,
      embedUrl: json['embed_url'],
      poster: json['poster'] != null
          ? (json['poster'] as List)
              .map((m) => MediaObject.fromJson(m))
              .toList()
          : null,
      metadata: json['metadata'],
      attribution: json['attribution'] != null && json['attribution'] is Map
          ? AttributionObject.fromJson(json['attribution'])
          : null,
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
    if (poster != null)
      data['poster'] = poster!.map((m) => m.toJson()).toList();
    if (metadata != null) data['metadata'] = metadata;
    if (attribution != null) data['attribution'] = attribution!.toJson();
    if (canAutoplayOnCellular != null)
      data['can_autoplay_on_cellular'] = canAutoplayOnCellular;
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
      attribution: json['attribution'] != null && json['attribution'] is Map
          ? AttributionObject.fromJson(json['attribution'])
          : null,
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
