import 'package:tumblr_api/api/models/blog_model.dart';
import 'package:tumblr_api/api/models/embed_iframe_object.dart';
import 'package:tumblr_api/api/models/media_object.dart';
import 'package:tumblr_api/api/models/tumblr_post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_block_model.freezed.dart';
part 'content_block_model.g.dart';

/// Base class for all content blocks
@Freezed(
    unionKey: 'type',
    unionValueCase: FreezedUnionCase.snake,
    fallbackUnion: 'generic')
class ContentBlock with _$ContentBlock {
  const ContentBlock._();

  /// Text content block
  @FreezedUnionValue('text')
  const factory ContentBlock.text({
    required String text,
    String? subtype,
    int? indentLevel,
    List<TextFormatting>? formatting,
  }) = TextContentBlock;

  /// Image content block
  @FreezedUnionValue('image')
  const factory ContentBlock.image({
    required List<MediaObject> media,
    Map<String, String>? colors,
    String? feedbackToken,
    List<MediaObject>? poster,
    AttributionObject? attribution,
    String? altText,
    String? caption,
  }) = ImageContentBlock;

  /// Link content block
  @FreezedUnionValue('link')
  const factory ContentBlock.link({
    required String url,
    String? title,
    String? description,
    String? author,
    String? siteName,
    String? displayUrl,
    List<MediaObject>? poster,
  }) = LinkContentBlock;

  /// Audio content block
  @FreezedUnionValue('audio')
  const factory ContentBlock.audio({
    String? url,
    MediaObject? media,
    String? provider,
    String? title,
    String? artist,
    String? album,
    List<MediaObject>? poster,
    String? embedHtml,
    String? embedUrl,
    Map<String, dynamic>? metadata,
    AttributionObject? attribution,
  }) = AudioContentBlock;

  /// Video content block
  @FreezedUnionValue('video')
  const factory ContentBlock.video({
    String? url,
    MediaObject? media,
    String? provider,
    String? embedHtml,
    EmbedIframeObject? embedIframe,
    String? embedUrl,
    List<MediaObject>? poster,
    Map<String, dynamic>? metadata,
    AttributionObject? attribution,
    bool? canAutoplayOnCellular,
    int? duration,
  }) = VideoContentBlock;

  /// Paywall content block
  @FreezedUnionValue('paywall')
  const factory ContentBlock.paywall({
    required String subtype,
    required String url,
    String? title,
    required String text,
    String? color,
    bool? isVisible,
  }) = PaywallContentBlock;

  /// Generic content block for unknown types
  @FreezedUnionValue('generic')
  const factory ContentBlock.generic({
    required String type,
    required Map<String, dynamic>? originalJson,
  }) = GenericContentBlock;

  factory ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ContentBlockFromJson(json);
}

/// Text formatting for inline styles
@freezed
class TextFormatting with _$TextFormatting {
  factory TextFormatting({
    required int start,
    required int end,
    required String type,
    String? url,
    final Map<String, dynamic>? blog,
  }) = _TextFormatting;

  factory TextFormatting.fromJson(Map<String, dynamic> json) =>
      _$TextFormattingFromJson(json);
}

/// Base class for layout blocks
@Freezed(
    unionKey: 'type',
    unionValueCase: FreezedUnionCase.snake,
    fallbackUnion: 'generic')
class LayoutBlock with _$LayoutBlock {
  const LayoutBlock._();

  /// Rows layout block
  @FreezedUnionValue('rows')
  const factory LayoutBlock.rows({
    required List<DisplayObject> display,
    int? truncateAfter,
  }) = RowsLayoutBlock;

  /// Condensed layout block
  @FreezedUnionValue('condensed')
  const factory LayoutBlock.condensed({
    int? truncateAfter,
    List<int>? blocks,
  }) = CondensedLayoutBlock;

  /// Ask layout block
  @FreezedUnionValue('ask')
  const factory LayoutBlock.ask({
    required List<int> blocks,
    AttributionObject? attribution,
  }) = AskLayoutBlock;

  /// Generic layout block for unknown types
  @FreezedUnionValue('generic')
  const factory LayoutBlock.generic({
    required String type,
    required Map<String, dynamic> originalJson,
  }) = GenericLayoutBlock;

  factory LayoutBlock.fromJson(Map<String, dynamic> json) =>
      _$LayoutBlockFromJson(json);
}

/// Display object for RowsLayoutBlock
@freezed
class DisplayObject with _$DisplayObject {
  factory DisplayObject({
    required List<int> blocks,
    DisplayMode? mode,
  }) = _DisplayObject;

  factory DisplayObject.fromJson(Map<String, dynamic> json) =>
      _$DisplayObjectFromJson(json);
}

/// Display mode for display object
@freezed
class DisplayMode with _$DisplayMode {
  factory DisplayMode({
    required String type,
  }) = _DisplayMode;

  factory DisplayMode.fromJson(Map<String, dynamic> json) =>
      _$DisplayModeFromJson(json);
}

/// Attribution object for content that references other content
@freezed
class AttributionObject with _$AttributionObject {
  const AttributionObject._();

  const factory AttributionObject({
    required String type,
    String? url,
    PostDetails? post,
    TumblrBlog? blog,
    String? appName,
    String? displayText,
    MediaObject? logo,
  }) = _AttributionObject;

  factory AttributionObject.fromJson(Map<String, dynamic> json) =>
      _$AttributionObjectFromJson(json);
}
