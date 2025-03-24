// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_block_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextContentBlockImpl _$$TextContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$TextContentBlockImpl(
      text: json['text'] as String,
      subtype: json['subtype'] as String?,
      indentLevel: (json['indent_level'] as num?)?.toInt(),
      formatting: (json['formatting'] as List<dynamic>?)
          ?.map((e) => TextFormatting.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TextContentBlockImplToJson(
        _$TextContentBlockImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'subtype': instance.subtype,
      'indent_level': instance.indentLevel,
      'formatting': instance.formatting,
      'type': instance.$type,
    };

_$ImageContentBlockImpl _$$ImageContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageContentBlockImpl(
      media: (json['media'] as List<dynamic>)
          .map((e) => MediaObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      colors: (json['colors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      feedbackToken: json['feedback_token'] as String?,
      poster: (json['poster'] as List<dynamic>?)
          ?.map((e) => MediaObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      attribution: json['attribution'] == null
          ? null
          : AttributionObject.fromJson(
              json['attribution'] as Map<String, dynamic>),
      altText: json['alt_text'] as String?,
      caption: json['caption'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageContentBlockImplToJson(
        _$ImageContentBlockImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
      'colors': instance.colors,
      'feedback_token': instance.feedbackToken,
      'poster': instance.poster,
      'attribution': instance.attribution,
      'alt_text': instance.altText,
      'caption': instance.caption,
      'type': instance.$type,
    };

_$LinkContentBlockImpl _$$LinkContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$LinkContentBlockImpl(
      url: json['url'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      siteName: json['site_name'] as String?,
      displayUrl: json['display_url'] as String?,
      poster: (json['poster'] as List<dynamic>?)
          ?.map((e) => MediaObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$LinkContentBlockImplToJson(
        _$LinkContentBlockImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'site_name': instance.siteName,
      'display_url': instance.displayUrl,
      'poster': instance.poster,
      'type': instance.$type,
    };

_$AudioContentBlockImpl _$$AudioContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$AudioContentBlockImpl(
      url: json['url'] as String?,
      media: json['media'] == null
          ? null
          : MediaObject.fromJson(json['media'] as Map<String, dynamic>),
      provider: json['provider'] as String?,
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      album: json['album'] as String?,
      poster: (json['poster'] as List<dynamic>?)
          ?.map((e) => MediaObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      embedHtml: json['embed_html'] as String?,
      embedUrl: json['embed_url'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      attribution: json['attribution'] == null
          ? null
          : AttributionObject.fromJson(
              json['attribution'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AudioContentBlockImplToJson(
        _$AudioContentBlockImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'media': instance.media,
      'provider': instance.provider,
      'title': instance.title,
      'artist': instance.artist,
      'album': instance.album,
      'poster': instance.poster,
      'embed_html': instance.embedHtml,
      'embed_url': instance.embedUrl,
      'metadata': instance.metadata,
      'attribution': instance.attribution,
      'type': instance.$type,
    };

_$VideoContentBlockImpl _$$VideoContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoContentBlockImpl(
      url: json['url'] as String?,
      media: json['media'] == null
          ? null
          : MediaObject.fromJson(json['media'] as Map<String, dynamic>),
      provider: json['provider'] as String?,
      embedHtml: json['embed_html'] as String?,
      embedIframe: json['embed_iframe'] == null
          ? null
          : EmbedIframeObject.fromJson(
              json['embed_iframe'] as Map<String, dynamic>),
      embedUrl: json['embed_url'] as String?,
      poster: (json['poster'] as List<dynamic>?)
          ?.map((e) => MediaObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      attribution: json['attribution'] == null
          ? null
          : AttributionObject.fromJson(
              json['attribution'] as Map<String, dynamic>),
      canAutoplayOnCellular: json['can_autoplay_on_cellular'] as bool?,
      duration: (json['duration'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$VideoContentBlockImplToJson(
        _$VideoContentBlockImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'media': instance.media,
      'provider': instance.provider,
      'embed_html': instance.embedHtml,
      'embed_iframe': instance.embedIframe,
      'embed_url': instance.embedUrl,
      'poster': instance.poster,
      'metadata': instance.metadata,
      'attribution': instance.attribution,
      'can_autoplay_on_cellular': instance.canAutoplayOnCellular,
      'duration': instance.duration,
      'type': instance.$type,
    };

_$PaywallContentBlockImpl _$$PaywallContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$PaywallContentBlockImpl(
      subtype: json['subtype'] as String,
      url: json['url'] as String,
      title: json['title'] as String?,
      text: json['text'] as String,
      color: json['color'] as String?,
      isVisible: json['is_visible'] as bool?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PaywallContentBlockImplToJson(
        _$PaywallContentBlockImpl instance) =>
    <String, dynamic>{
      'subtype': instance.subtype,
      'url': instance.url,
      'title': instance.title,
      'text': instance.text,
      'color': instance.color,
      'is_visible': instance.isVisible,
      'type': instance.$type,
    };

_$GenericContentBlockImpl _$$GenericContentBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericContentBlockImpl(
      type: json['type'] as String,
      originalJson: json['original_json'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$GenericContentBlockImplToJson(
        _$GenericContentBlockImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'original_json': instance.originalJson,
    };

_$TextFormattingImpl _$$TextFormattingImplFromJson(Map<String, dynamic> json) =>
    _$TextFormattingImpl(
      start: (json['start'] as num).toInt(),
      end: (json['end'] as num).toInt(),
      type: json['type'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TextFormattingImplToJson(
        _$TextFormattingImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'type': instance.type,
      'url': instance.url,
    };

_$RowsLayoutBlockImpl _$$RowsLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$RowsLayoutBlockImpl(
      display: (json['display'] as List<dynamic>)
          .map((e) => DisplayObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      truncateAfter: (json['truncate_after'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RowsLayoutBlockImplToJson(
        _$RowsLayoutBlockImpl instance) =>
    <String, dynamic>{
      'display': instance.display,
      'truncate_after': instance.truncateAfter,
      'type': instance.$type,
    };

_$CondensedLayoutBlockImpl _$$CondensedLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$CondensedLayoutBlockImpl(
      truncateAfter: (json['truncate_after'] as num?)?.toInt(),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CondensedLayoutBlockImplToJson(
        _$CondensedLayoutBlockImpl instance) =>
    <String, dynamic>{
      'truncate_after': instance.truncateAfter,
      'blocks': instance.blocks,
      'type': instance.$type,
    };

_$AskLayoutBlockImpl _$$AskLayoutBlockImplFromJson(Map<String, dynamic> json) =>
    _$AskLayoutBlockImpl(
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      attribution: json['attribution'] == null
          ? null
          : AttributionObject.fromJson(
              json['attribution'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AskLayoutBlockImplToJson(
        _$AskLayoutBlockImpl instance) =>
    <String, dynamic>{
      'blocks': instance.blocks,
      'attribution': instance.attribution,
      'type': instance.$type,
    };

_$GenericLayoutBlockImpl _$$GenericLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericLayoutBlockImpl(
      type: json['type'] as String,
      originalJson: json['original_json'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GenericLayoutBlockImplToJson(
        _$GenericLayoutBlockImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'original_json': instance.originalJson,
    };

_$DisplayObjectImpl _$$DisplayObjectImplFromJson(Map<String, dynamic> json) =>
    _$DisplayObjectImpl(
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      mode: json['mode'] == null
          ? null
          : DisplayMode.fromJson(json['mode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisplayObjectImplToJson(_$DisplayObjectImpl instance) =>
    <String, dynamic>{
      'blocks': instance.blocks,
      'mode': instance.mode,
    };

_$DisplayModeImpl _$$DisplayModeImplFromJson(Map<String, dynamic> json) =>
    _$DisplayModeImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$DisplayModeImplToJson(_$DisplayModeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$AttributionObjectImpl _$$AttributionObjectImplFromJson(
        Map<String, dynamic> json) =>
    _$AttributionObjectImpl(
      type: json['type'] as String,
      url: json['url'] as String?,
      post: json['post'] == null
          ? null
          : PostDetails.fromJson(json['post'] as Map<String, dynamic>),
      blog: json['blog'] == null
          ? null
          : TumblrBlog.fromJson(json['blog'] as Map<String, dynamic>),
      appName: json['app_name'] as String?,
      displayText: json['display_text'] as String?,
      logo: json['logo'] == null
          ? null
          : MediaObject.fromJson(json['logo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttributionObjectImplToJson(
        _$AttributionObjectImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'post': instance.post,
      'blog': instance.blog,
      'app_name': instance.appName,
      'display_text': instance.displayText,
      'logo': instance.logo,
    };
