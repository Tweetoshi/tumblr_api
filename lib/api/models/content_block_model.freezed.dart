// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_block_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentBlock _$ContentBlockFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
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
      return GenericContentBlock.fromJson(json);
  }
}

/// @nodoc
mixin _$ContentBlock {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ContentBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBlockCopyWith<$Res> {
  factory $ContentBlockCopyWith(
          ContentBlock value, $Res Function(ContentBlock) then) =
      _$ContentBlockCopyWithImpl<$Res, ContentBlock>;
}

/// @nodoc
class _$ContentBlockCopyWithImpl<$Res, $Val extends ContentBlock>
    implements $ContentBlockCopyWith<$Res> {
  _$ContentBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextContentBlockImplCopyWith<$Res> {
  factory _$$TextContentBlockImplCopyWith(_$TextContentBlockImpl value,
          $Res Function(_$TextContentBlockImpl) then) =
      __$$TextContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String text,
      String? subtype,
      int? indentLevel,
      List<TextFormatting>? formatting});
}

/// @nodoc
class __$$TextContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$TextContentBlockImpl>
    implements _$$TextContentBlockImplCopyWith<$Res> {
  __$$TextContentBlockImplCopyWithImpl(_$TextContentBlockImpl _value,
      $Res Function(_$TextContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? subtype = freezed,
    Object? indentLevel = freezed,
    Object? formatting = freezed,
  }) {
    return _then(_$TextContentBlockImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subtype: freezed == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String?,
      indentLevel: freezed == indentLevel
          ? _value.indentLevel
          : indentLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      formatting: freezed == formatting
          ? _value._formatting
          : formatting // ignore: cast_nullable_to_non_nullable
              as List<TextFormatting>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextContentBlockImpl extends TextContentBlock {
  const _$TextContentBlockImpl(
      {required this.text,
      this.subtype,
      this.indentLevel,
      final List<TextFormatting>? formatting,
      final String? $type})
      : _formatting = formatting,
        $type = $type ?? 'text',
        super._();

  factory _$TextContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextContentBlockImplFromJson(json);

  @override
  final String text;
  @override
  final String? subtype;
  @override
  final int? indentLevel;
  final List<TextFormatting>? _formatting;
  @override
  List<TextFormatting>? get formatting {
    final value = _formatting;
    if (value == null) return null;
    if (_formatting is EqualUnmodifiableListView) return _formatting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.text(text: $text, subtype: $subtype, indentLevel: $indentLevel, formatting: $formatting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextContentBlockImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.indentLevel, indentLevel) ||
                other.indentLevel == indentLevel) &&
            const DeepCollectionEquality()
                .equals(other._formatting, _formatting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, subtype, indentLevel,
      const DeepCollectionEquality().hash(_formatting));

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextContentBlockImplCopyWith<_$TextContentBlockImpl> get copyWith =>
      __$$TextContentBlockImplCopyWithImpl<_$TextContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return text(this.text, subtype, indentLevel, formatting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return text?.call(this.text, subtype, indentLevel, formatting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this.text, subtype, indentLevel, formatting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextContentBlockImplToJson(
      this,
    );
  }
}

abstract class TextContentBlock extends ContentBlock {
  const factory TextContentBlock(
      {required final String text,
      final String? subtype,
      final int? indentLevel,
      final List<TextFormatting>? formatting}) = _$TextContentBlockImpl;
  const TextContentBlock._() : super._();

  factory TextContentBlock.fromJson(Map<String, dynamic> json) =
      _$TextContentBlockImpl.fromJson;

  String get text;
  String? get subtype;
  int? get indentLevel;
  List<TextFormatting>? get formatting;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextContentBlockImplCopyWith<_$TextContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageContentBlockImplCopyWith<$Res> {
  factory _$$ImageContentBlockImplCopyWith(_$ImageContentBlockImpl value,
          $Res Function(_$ImageContentBlockImpl) then) =
      __$$ImageContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MediaObject> media,
      Map<String, String>? colors,
      String? feedbackToken,
      List<MediaObject>? poster,
      AttributionObject? attribution,
      String? altText,
      String? caption});

  $AttributionObjectCopyWith<$Res>? get attribution;
}

/// @nodoc
class __$$ImageContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$ImageContentBlockImpl>
    implements _$$ImageContentBlockImplCopyWith<$Res> {
  __$$ImageContentBlockImplCopyWithImpl(_$ImageContentBlockImpl _value,
      $Res Function(_$ImageContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? colors = freezed,
    Object? feedbackToken = freezed,
    Object? poster = freezed,
    Object? attribution = freezed,
    Object? altText = freezed,
    Object? caption = freezed,
  }) {
    return _then(_$ImageContentBlockImpl(
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaObject>,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      feedbackToken: freezed == feedbackToken
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value._poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<MediaObject>?,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as AttributionObject?,
      altText: freezed == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionObjectCopyWith<$Res>? get attribution {
    if (_value.attribution == null) {
      return null;
    }

    return $AttributionObjectCopyWith<$Res>(_value.attribution!, (value) {
      return _then(_value.copyWith(attribution: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageContentBlockImpl extends ImageContentBlock {
  const _$ImageContentBlockImpl(
      {required final List<MediaObject> media,
      final Map<String, String>? colors,
      this.feedbackToken,
      final List<MediaObject>? poster,
      this.attribution,
      this.altText,
      this.caption,
      final String? $type})
      : _media = media,
        _colors = colors,
        _poster = poster,
        $type = $type ?? 'image',
        super._();

  factory _$ImageContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageContentBlockImplFromJson(json);

  final List<MediaObject> _media;
  @override
  List<MediaObject> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final Map<String, String>? _colors;
  @override
  Map<String, String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableMapView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? feedbackToken;
  final List<MediaObject>? _poster;
  @override
  List<MediaObject>? get poster {
    final value = _poster;
    if (value == null) return null;
    if (_poster is EqualUnmodifiableListView) return _poster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final AttributionObject? attribution;
  @override
  final String? altText;
  @override
  final String? caption;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.image(media: $media, colors: $colors, feedbackToken: $feedbackToken, poster: $poster, attribution: $attribution, altText: $altText, caption: $caption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageContentBlockImpl &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            (identical(other.feedbackToken, feedbackToken) ||
                other.feedbackToken == feedbackToken) &&
            const DeepCollectionEquality().equals(other._poster, _poster) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution) &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_colors),
      feedbackToken,
      const DeepCollectionEquality().hash(_poster),
      attribution,
      altText,
      caption);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageContentBlockImplCopyWith<_$ImageContentBlockImpl> get copyWith =>
      __$$ImageContentBlockImplCopyWithImpl<_$ImageContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return image(
        media, colors, feedbackToken, poster, attribution, altText, caption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return image?.call(
        media, colors, feedbackToken, poster, attribution, altText, caption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(
          media, colors, feedbackToken, poster, attribution, altText, caption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageContentBlockImplToJson(
      this,
    );
  }
}

abstract class ImageContentBlock extends ContentBlock {
  const factory ImageContentBlock(
      {required final List<MediaObject> media,
      final Map<String, String>? colors,
      final String? feedbackToken,
      final List<MediaObject>? poster,
      final AttributionObject? attribution,
      final String? altText,
      final String? caption}) = _$ImageContentBlockImpl;
  const ImageContentBlock._() : super._();

  factory ImageContentBlock.fromJson(Map<String, dynamic> json) =
      _$ImageContentBlockImpl.fromJson;

  List<MediaObject> get media;
  Map<String, String>? get colors;
  String? get feedbackToken;
  List<MediaObject>? get poster;
  AttributionObject? get attribution;
  String? get altText;
  String? get caption;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageContentBlockImplCopyWith<_$ImageContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinkContentBlockImplCopyWith<$Res> {
  factory _$$LinkContentBlockImplCopyWith(_$LinkContentBlockImpl value,
          $Res Function(_$LinkContentBlockImpl) then) =
      __$$LinkContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String url,
      String? title,
      String? description,
      String? author,
      String? siteName,
      String? displayUrl,
      List<MediaObject>? poster});
}

/// @nodoc
class __$$LinkContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$LinkContentBlockImpl>
    implements _$$LinkContentBlockImplCopyWith<$Res> {
  __$$LinkContentBlockImplCopyWithImpl(_$LinkContentBlockImpl _value,
      $Res Function(_$LinkContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? siteName = freezed,
    Object? displayUrl = freezed,
    Object? poster = freezed,
  }) {
    return _then(_$LinkContentBlockImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: freezed == siteName
          ? _value.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayUrl: freezed == displayUrl
          ? _value.displayUrl
          : displayUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value._poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<MediaObject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkContentBlockImpl extends LinkContentBlock {
  const _$LinkContentBlockImpl(
      {required this.url,
      this.title,
      this.description,
      this.author,
      this.siteName,
      this.displayUrl,
      final List<MediaObject>? poster,
      final String? $type})
      : _poster = poster,
        $type = $type ?? 'link',
        super._();

  factory _$LinkContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkContentBlockImplFromJson(json);

  @override
  final String url;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String? siteName;
  @override
  final String? displayUrl;
  final List<MediaObject>? _poster;
  @override
  List<MediaObject>? get poster {
    final value = _poster;
    if (value == null) return null;
    if (_poster is EqualUnmodifiableListView) return _poster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.link(url: $url, title: $title, description: $description, author: $author, siteName: $siteName, displayUrl: $displayUrl, poster: $poster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkContentBlockImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.displayUrl, displayUrl) ||
                other.displayUrl == displayUrl) &&
            const DeepCollectionEquality().equals(other._poster, _poster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, title, description, author,
      siteName, displayUrl, const DeepCollectionEquality().hash(_poster));

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkContentBlockImplCopyWith<_$LinkContentBlockImpl> get copyWith =>
      __$$LinkContentBlockImplCopyWithImpl<_$LinkContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return link(url, title, description, author, siteName, displayUrl, poster);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return link?.call(
        url, title, description, author, siteName, displayUrl, poster);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(
          url, title, description, author, siteName, displayUrl, poster);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkContentBlockImplToJson(
      this,
    );
  }
}

abstract class LinkContentBlock extends ContentBlock {
  const factory LinkContentBlock(
      {required final String url,
      final String? title,
      final String? description,
      final String? author,
      final String? siteName,
      final String? displayUrl,
      final List<MediaObject>? poster}) = _$LinkContentBlockImpl;
  const LinkContentBlock._() : super._();

  factory LinkContentBlock.fromJson(Map<String, dynamic> json) =
      _$LinkContentBlockImpl.fromJson;

  String get url;
  String? get title;
  String? get description;
  String? get author;
  String? get siteName;
  String? get displayUrl;
  List<MediaObject>? get poster;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkContentBlockImplCopyWith<_$LinkContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AudioContentBlockImplCopyWith<$Res> {
  factory _$$AudioContentBlockImplCopyWith(_$AudioContentBlockImpl value,
          $Res Function(_$AudioContentBlockImpl) then) =
      __$$AudioContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? url,
      MediaObject? media,
      String? provider,
      String? title,
      String? artist,
      String? album,
      List<MediaObject>? poster,
      String? embedHtml,
      String? embedUrl,
      Map<String, dynamic>? metadata,
      AttributionObject? attribution});

  $MediaObjectCopyWith<$Res>? get media;
  $AttributionObjectCopyWith<$Res>? get attribution;
}

/// @nodoc
class __$$AudioContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$AudioContentBlockImpl>
    implements _$$AudioContentBlockImplCopyWith<$Res> {
  __$$AudioContentBlockImplCopyWithImpl(_$AudioContentBlockImpl _value,
      $Res Function(_$AudioContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? media = freezed,
    Object? provider = freezed,
    Object? title = freezed,
    Object? artist = freezed,
    Object? album = freezed,
    Object? poster = freezed,
    Object? embedHtml = freezed,
    Object? embedUrl = freezed,
    Object? metadata = freezed,
    Object? attribution = freezed,
  }) {
    return _then(_$AudioContentBlockImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value._poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<MediaObject>?,
      embedHtml: freezed == embedHtml
          ? _value.embedHtml
          : embedHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as AttributionObject?,
    ));
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaObjectCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaObjectCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value));
    });
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionObjectCopyWith<$Res>? get attribution {
    if (_value.attribution == null) {
      return null;
    }

    return $AttributionObjectCopyWith<$Res>(_value.attribution!, (value) {
      return _then(_value.copyWith(attribution: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioContentBlockImpl extends AudioContentBlock {
  const _$AudioContentBlockImpl(
      {this.url,
      this.media,
      this.provider,
      this.title,
      this.artist,
      this.album,
      final List<MediaObject>? poster,
      this.embedHtml,
      this.embedUrl,
      final Map<String, dynamic>? metadata,
      this.attribution,
      final String? $type})
      : _poster = poster,
        _metadata = metadata,
        $type = $type ?? 'audio',
        super._();

  factory _$AudioContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioContentBlockImplFromJson(json);

  @override
  final String? url;
  @override
  final MediaObject? media;
  @override
  final String? provider;
  @override
  final String? title;
  @override
  final String? artist;
  @override
  final String? album;
  final List<MediaObject>? _poster;
  @override
  List<MediaObject>? get poster {
    final value = _poster;
    if (value == null) return null;
    if (_poster is EqualUnmodifiableListView) return _poster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? embedHtml;
  @override
  final String? embedUrl;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final AttributionObject? attribution;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.audio(url: $url, media: $media, provider: $provider, title: $title, artist: $artist, album: $album, poster: $poster, embedHtml: $embedHtml, embedUrl: $embedUrl, metadata: $metadata, attribution: $attribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioContentBlockImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._poster, _poster) &&
            (identical(other.embedHtml, embedHtml) ||
                other.embedHtml == embedHtml) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      media,
      provider,
      title,
      artist,
      album,
      const DeepCollectionEquality().hash(_poster),
      embedHtml,
      embedUrl,
      const DeepCollectionEquality().hash(_metadata),
      attribution);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioContentBlockImplCopyWith<_$AudioContentBlockImpl> get copyWith =>
      __$$AudioContentBlockImplCopyWithImpl<_$AudioContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return audio(url, media, provider, title, artist, album, poster, embedHtml,
        embedUrl, metadata, attribution);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return audio?.call(url, media, provider, title, artist, album, poster,
        embedHtml, embedUrl, metadata, attribution);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(url, media, provider, title, artist, album, poster,
          embedHtml, embedUrl, metadata, attribution);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return audio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return audio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (audio != null) {
      return audio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioContentBlockImplToJson(
      this,
    );
  }
}

abstract class AudioContentBlock extends ContentBlock {
  const factory AudioContentBlock(
      {final String? url,
      final MediaObject? media,
      final String? provider,
      final String? title,
      final String? artist,
      final String? album,
      final List<MediaObject>? poster,
      final String? embedHtml,
      final String? embedUrl,
      final Map<String, dynamic>? metadata,
      final AttributionObject? attribution}) = _$AudioContentBlockImpl;
  const AudioContentBlock._() : super._();

  factory AudioContentBlock.fromJson(Map<String, dynamic> json) =
      _$AudioContentBlockImpl.fromJson;

  String? get url;
  MediaObject? get media;
  String? get provider;
  String? get title;
  String? get artist;
  String? get album;
  List<MediaObject>? get poster;
  String? get embedHtml;
  String? get embedUrl;
  Map<String, dynamic>? get metadata;
  AttributionObject? get attribution;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioContentBlockImplCopyWith<_$AudioContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoContentBlockImplCopyWith<$Res> {
  factory _$$VideoContentBlockImplCopyWith(_$VideoContentBlockImpl value,
          $Res Function(_$VideoContentBlockImpl) then) =
      __$$VideoContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? url,
      MediaObject? media,
      String? provider,
      String? embedHtml,
      EmbedIframeObject? embedIframe,
      String? embedUrl,
      List<MediaObject>? poster,
      Map<String, dynamic>? metadata,
      AttributionObject? attribution,
      bool? canAutoplayOnCellular,
      int? duration});

  $MediaObjectCopyWith<$Res>? get media;
  $EmbedIframeObjectCopyWith<$Res>? get embedIframe;
  $AttributionObjectCopyWith<$Res>? get attribution;
}

/// @nodoc
class __$$VideoContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$VideoContentBlockImpl>
    implements _$$VideoContentBlockImplCopyWith<$Res> {
  __$$VideoContentBlockImplCopyWithImpl(_$VideoContentBlockImpl _value,
      $Res Function(_$VideoContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? media = freezed,
    Object? provider = freezed,
    Object? embedHtml = freezed,
    Object? embedIframe = freezed,
    Object? embedUrl = freezed,
    Object? poster = freezed,
    Object? metadata = freezed,
    Object? attribution = freezed,
    Object? canAutoplayOnCellular = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$VideoContentBlockImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      embedHtml: freezed == embedHtml
          ? _value.embedHtml
          : embedHtml // ignore: cast_nullable_to_non_nullable
              as String?,
      embedIframe: freezed == embedIframe
          ? _value.embedIframe
          : embedIframe // ignore: cast_nullable_to_non_nullable
              as EmbedIframeObject?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value._poster
          : poster // ignore: cast_nullable_to_non_nullable
              as List<MediaObject>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as AttributionObject?,
      canAutoplayOnCellular: freezed == canAutoplayOnCellular
          ? _value.canAutoplayOnCellular
          : canAutoplayOnCellular // ignore: cast_nullable_to_non_nullable
              as bool?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaObjectCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaObjectCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value));
    });
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmbedIframeObjectCopyWith<$Res>? get embedIframe {
    if (_value.embedIframe == null) {
      return null;
    }

    return $EmbedIframeObjectCopyWith<$Res>(_value.embedIframe!, (value) {
      return _then(_value.copyWith(embedIframe: value));
    });
  }

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionObjectCopyWith<$Res>? get attribution {
    if (_value.attribution == null) {
      return null;
    }

    return $AttributionObjectCopyWith<$Res>(_value.attribution!, (value) {
      return _then(_value.copyWith(attribution: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoContentBlockImpl extends VideoContentBlock {
  const _$VideoContentBlockImpl(
      {this.url,
      this.media,
      this.provider,
      this.embedHtml,
      this.embedIframe,
      this.embedUrl,
      final List<MediaObject>? poster,
      final Map<String, dynamic>? metadata,
      this.attribution,
      this.canAutoplayOnCellular,
      this.duration,
      final String? $type})
      : _poster = poster,
        _metadata = metadata,
        $type = $type ?? 'video',
        super._();

  factory _$VideoContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoContentBlockImplFromJson(json);

  @override
  final String? url;
  @override
  final MediaObject? media;
  @override
  final String? provider;
  @override
  final String? embedHtml;
  @override
  final EmbedIframeObject? embedIframe;
  @override
  final String? embedUrl;
  final List<MediaObject>? _poster;
  @override
  List<MediaObject>? get poster {
    final value = _poster;
    if (value == null) return null;
    if (_poster is EqualUnmodifiableListView) return _poster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final AttributionObject? attribution;
  @override
  final bool? canAutoplayOnCellular;
  @override
  final int? duration;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.video(url: $url, media: $media, provider: $provider, embedHtml: $embedHtml, embedIframe: $embedIframe, embedUrl: $embedUrl, poster: $poster, metadata: $metadata, attribution: $attribution, canAutoplayOnCellular: $canAutoplayOnCellular, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoContentBlockImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.embedHtml, embedHtml) ||
                other.embedHtml == embedHtml) &&
            (identical(other.embedIframe, embedIframe) ||
                other.embedIframe == embedIframe) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            const DeepCollectionEquality().equals(other._poster, _poster) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution) &&
            (identical(other.canAutoplayOnCellular, canAutoplayOnCellular) ||
                other.canAutoplayOnCellular == canAutoplayOnCellular) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      media,
      provider,
      embedHtml,
      embedIframe,
      embedUrl,
      const DeepCollectionEquality().hash(_poster),
      const DeepCollectionEquality().hash(_metadata),
      attribution,
      canAutoplayOnCellular,
      duration);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoContentBlockImplCopyWith<_$VideoContentBlockImpl> get copyWith =>
      __$$VideoContentBlockImplCopyWithImpl<_$VideoContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return video(url, media, provider, embedHtml, embedIframe, embedUrl, poster,
        metadata, attribution, canAutoplayOnCellular, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return video?.call(url, media, provider, embedHtml, embedIframe, embedUrl,
        poster, metadata, attribution, canAutoplayOnCellular, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(url, media, provider, embedHtml, embedIframe, embedUrl,
          poster, metadata, attribution, canAutoplayOnCellular, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return video(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return video?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (video != null) {
      return video(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoContentBlockImplToJson(
      this,
    );
  }
}

abstract class VideoContentBlock extends ContentBlock {
  const factory VideoContentBlock(
      {final String? url,
      final MediaObject? media,
      final String? provider,
      final String? embedHtml,
      final EmbedIframeObject? embedIframe,
      final String? embedUrl,
      final List<MediaObject>? poster,
      final Map<String, dynamic>? metadata,
      final AttributionObject? attribution,
      final bool? canAutoplayOnCellular,
      final int? duration}) = _$VideoContentBlockImpl;
  const VideoContentBlock._() : super._();

  factory VideoContentBlock.fromJson(Map<String, dynamic> json) =
      _$VideoContentBlockImpl.fromJson;

  String? get url;
  MediaObject? get media;
  String? get provider;
  String? get embedHtml;
  EmbedIframeObject? get embedIframe;
  String? get embedUrl;
  List<MediaObject>? get poster;
  Map<String, dynamic>? get metadata;
  AttributionObject? get attribution;
  bool? get canAutoplayOnCellular;
  int? get duration;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoContentBlockImplCopyWith<_$VideoContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaywallContentBlockImplCopyWith<$Res> {
  factory _$$PaywallContentBlockImplCopyWith(_$PaywallContentBlockImpl value,
          $Res Function(_$PaywallContentBlockImpl) then) =
      __$$PaywallContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String subtype,
      String url,
      String? title,
      String text,
      String? color,
      bool? isVisible});
}

/// @nodoc
class __$$PaywallContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$PaywallContentBlockImpl>
    implements _$$PaywallContentBlockImplCopyWith<$Res> {
  __$$PaywallContentBlockImplCopyWithImpl(_$PaywallContentBlockImpl _value,
      $Res Function(_$PaywallContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtype = null,
    Object? url = null,
    Object? title = freezed,
    Object? text = null,
    Object? color = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$PaywallContentBlockImpl(
      subtype: null == subtype
          ? _value.subtype
          : subtype // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      isVisible: freezed == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaywallContentBlockImpl extends PaywallContentBlock {
  const _$PaywallContentBlockImpl(
      {required this.subtype,
      required this.url,
      this.title,
      required this.text,
      this.color,
      this.isVisible,
      final String? $type})
      : $type = $type ?? 'paywall',
        super._();

  factory _$PaywallContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaywallContentBlockImplFromJson(json);

  @override
  final String subtype;
  @override
  final String url;
  @override
  final String? title;
  @override
  final String text;
  @override
  final String? color;
  @override
  final bool? isVisible;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ContentBlock.paywall(subtype: $subtype, url: $url, title: $title, text: $text, color: $color, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaywallContentBlockImpl &&
            (identical(other.subtype, subtype) || other.subtype == subtype) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subtype, url, title, text, color, isVisible);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaywallContentBlockImplCopyWith<_$PaywallContentBlockImpl> get copyWith =>
      __$$PaywallContentBlockImplCopyWithImpl<_$PaywallContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return paywall(subtype, url, title, this.text, color, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return paywall?.call(subtype, url, title, this.text, color, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (paywall != null) {
      return paywall(subtype, url, title, this.text, color, isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return paywall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return paywall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (paywall != null) {
      return paywall(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaywallContentBlockImplToJson(
      this,
    );
  }
}

abstract class PaywallContentBlock extends ContentBlock {
  const factory PaywallContentBlock(
      {required final String subtype,
      required final String url,
      final String? title,
      required final String text,
      final String? color,
      final bool? isVisible}) = _$PaywallContentBlockImpl;
  const PaywallContentBlock._() : super._();

  factory PaywallContentBlock.fromJson(Map<String, dynamic> json) =
      _$PaywallContentBlockImpl.fromJson;

  String get subtype;
  String get url;
  String? get title;
  String get text;
  String? get color;
  bool? get isVisible;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaywallContentBlockImplCopyWith<_$PaywallContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericContentBlockImplCopyWith<$Res> {
  factory _$$GenericContentBlockImplCopyWith(_$GenericContentBlockImpl value,
          $Res Function(_$GenericContentBlockImpl) then) =
      __$$GenericContentBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, Map<String, dynamic>? originalJson});
}

/// @nodoc
class __$$GenericContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$GenericContentBlockImpl>
    implements _$$GenericContentBlockImplCopyWith<$Res> {
  __$$GenericContentBlockImplCopyWithImpl(_$GenericContentBlockImpl _value,
      $Res Function(_$GenericContentBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? originalJson = freezed,
  }) {
    return _then(_$GenericContentBlockImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      originalJson: freezed == originalJson
          ? _value._originalJson
          : originalJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericContentBlockImpl extends GenericContentBlock {
  const _$GenericContentBlockImpl(
      {required this.type, required final Map<String, dynamic>? originalJson})
      : _originalJson = originalJson,
        super._();

  factory _$GenericContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericContentBlockImplFromJson(json);

  @override
  final String type;
  final Map<String, dynamic>? _originalJson;
  @override
  Map<String, dynamic>? get originalJson {
    final value = _originalJson;
    if (value == null) return null;
    if (_originalJson is EqualUnmodifiableMapView) return _originalJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ContentBlock.generic(type: $type, originalJson: $originalJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericContentBlockImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._originalJson, _originalJson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_originalJson));

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericContentBlockImplCopyWith<_$GenericContentBlockImpl> get copyWith =>
      __$$GenericContentBlockImplCopyWithImpl<_$GenericContentBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)
        text,
    required TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)
        image,
    required TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)
        link,
    required TResult Function(
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
            AttributionObject? attribution)
        audio,
    required TResult Function(
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
            int? duration)
        video,
    required TResult Function(String subtype, String url, String? title,
            String text, String? color, bool? isVisible)
        paywall,
    required TResult Function(String type, Map<String, dynamic>? originalJson)
        generic,
  }) {
    return generic(type, originalJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult? Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult? Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult? Function(
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
            AttributionObject? attribution)?
        audio,
    TResult? Function(
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
            int? duration)?
        video,
    TResult? Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult? Function(String type, Map<String, dynamic>? originalJson)? generic,
  }) {
    return generic?.call(type, originalJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String? subtype, int? indentLevel,
            List<TextFormatting>? formatting)?
        text,
    TResult Function(
            List<MediaObject> media,
            Map<String, String>? colors,
            String? feedbackToken,
            List<MediaObject>? poster,
            AttributionObject? attribution,
            String? altText,
            String? caption)?
        image,
    TResult Function(
            String url,
            String? title,
            String? description,
            String? author,
            String? siteName,
            String? displayUrl,
            List<MediaObject>? poster)?
        link,
    TResult Function(
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
            AttributionObject? attribution)?
        audio,
    TResult Function(
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
            int? duration)?
        video,
    TResult Function(String subtype, String url, String? title, String text,
            String? color, bool? isVisible)?
        paywall,
    TResult Function(String type, Map<String, dynamic>? originalJson)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(type, originalJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ImageContentBlock value) image,
    required TResult Function(LinkContentBlock value) link,
    required TResult Function(AudioContentBlock value) audio,
    required TResult Function(VideoContentBlock value) video,
    required TResult Function(PaywallContentBlock value) paywall,
    required TResult Function(GenericContentBlock value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ImageContentBlock value)? image,
    TResult? Function(LinkContentBlock value)? link,
    TResult? Function(AudioContentBlock value)? audio,
    TResult? Function(VideoContentBlock value)? video,
    TResult? Function(PaywallContentBlock value)? paywall,
    TResult? Function(GenericContentBlock value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextContentBlock value)? text,
    TResult Function(ImageContentBlock value)? image,
    TResult Function(LinkContentBlock value)? link,
    TResult Function(AudioContentBlock value)? audio,
    TResult Function(VideoContentBlock value)? video,
    TResult Function(PaywallContentBlock value)? paywall,
    TResult Function(GenericContentBlock value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericContentBlockImplToJson(
      this,
    );
  }
}

abstract class GenericContentBlock extends ContentBlock {
  const factory GenericContentBlock(
          {required final String type,
          required final Map<String, dynamic>? originalJson}) =
      _$GenericContentBlockImpl;
  const GenericContentBlock._() : super._();

  factory GenericContentBlock.fromJson(Map<String, dynamic> json) =
      _$GenericContentBlockImpl.fromJson;

  String get type;
  Map<String, dynamic>? get originalJson;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericContentBlockImplCopyWith<_$GenericContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TextFormatting _$TextFormattingFromJson(Map<String, dynamic> json) {
  return _TextFormatting.fromJson(json);
}

/// @nodoc
mixin _$TextFormatting {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get blog => throw _privateConstructorUsedError;

  /// Serializes this TextFormatting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextFormatting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextFormattingCopyWith<TextFormatting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFormattingCopyWith<$Res> {
  factory $TextFormattingCopyWith(
          TextFormatting value, $Res Function(TextFormatting) then) =
      _$TextFormattingCopyWithImpl<$Res, TextFormatting>;
  @useResult
  $Res call(
      {int start,
      int end,
      String type,
      String? url,
      Map<String, dynamic>? blog});
}

/// @nodoc
class _$TextFormattingCopyWithImpl<$Res, $Val extends TextFormatting>
    implements $TextFormattingCopyWith<$Res> {
  _$TextFormattingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextFormatting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? type = null,
    Object? url = freezed,
    Object? blog = freezed,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextFormattingImplCopyWith<$Res>
    implements $TextFormattingCopyWith<$Res> {
  factory _$$TextFormattingImplCopyWith(_$TextFormattingImpl value,
          $Res Function(_$TextFormattingImpl) then) =
      __$$TextFormattingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int start,
      int end,
      String type,
      String? url,
      Map<String, dynamic>? blog});
}

/// @nodoc
class __$$TextFormattingImplCopyWithImpl<$Res>
    extends _$TextFormattingCopyWithImpl<$Res, _$TextFormattingImpl>
    implements _$$TextFormattingImplCopyWith<$Res> {
  __$$TextFormattingImplCopyWithImpl(
      _$TextFormattingImpl _value, $Res Function(_$TextFormattingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextFormatting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? type = null,
    Object? url = freezed,
    Object? blog = freezed,
  }) {
    return _then(_$TextFormattingImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value._blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextFormattingImpl implements _TextFormatting {
  _$TextFormattingImpl(
      {required this.start,
      required this.end,
      required this.type,
      this.url,
      final Map<String, dynamic>? blog})
      : _blog = blog;

  factory _$TextFormattingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextFormattingImplFromJson(json);

  @override
  final int start;
  @override
  final int end;
  @override
  final String type;
  @override
  final String? url;
  final Map<String, dynamic>? _blog;
  @override
  Map<String, dynamic>? get blog {
    final value = _blog;
    if (value == null) return null;
    if (_blog is EqualUnmodifiableMapView) return _blog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TextFormatting(start: $start, end: $end, type: $type, url: $url, blog: $blog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFormattingImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._blog, _blog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, type, url,
      const DeepCollectionEquality().hash(_blog));

  /// Create a copy of TextFormatting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFormattingImplCopyWith<_$TextFormattingImpl> get copyWith =>
      __$$TextFormattingImplCopyWithImpl<_$TextFormattingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextFormattingImplToJson(
      this,
    );
  }
}

abstract class _TextFormatting implements TextFormatting {
  factory _TextFormatting(
      {required final int start,
      required final int end,
      required final String type,
      final String? url,
      final Map<String, dynamic>? blog}) = _$TextFormattingImpl;

  factory _TextFormatting.fromJson(Map<String, dynamic> json) =
      _$TextFormattingImpl.fromJson;

  @override
  int get start;
  @override
  int get end;
  @override
  String get type;
  @override
  String? get url;
  @override
  Map<String, dynamic>? get blog;

  /// Create a copy of TextFormatting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFormattingImplCopyWith<_$TextFormattingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LayoutBlock _$LayoutBlockFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'rows':
      return RowsLayoutBlock.fromJson(json);
    case 'condensed':
      return CondensedLayoutBlock.fromJson(json);
    case 'ask':
      return AskLayoutBlock.fromJson(json);

    default:
      return GenericLayoutBlock.fromJson(json);
  }
}

/// @nodoc
mixin _$LayoutBlock {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisplayObject> display, int? truncateAfter)
        rows,
    required TResult Function(int? truncateAfter, List<int>? blocks) condensed,
    required TResult Function(List<int> blocks, AttributionObject? attribution)
        ask,
    required TResult Function(String type, Map<String, dynamic> originalJson)
        generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult? Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult? Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult? Function(String type, Map<String, dynamic> originalJson)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult Function(String type, Map<String, dynamic> originalJson)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RowsLayoutBlock value) rows,
    required TResult Function(CondensedLayoutBlock value) condensed,
    required TResult Function(AskLayoutBlock value) ask,
    required TResult Function(GenericLayoutBlock value) generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RowsLayoutBlock value)? rows,
    TResult? Function(CondensedLayoutBlock value)? condensed,
    TResult? Function(AskLayoutBlock value)? ask,
    TResult? Function(GenericLayoutBlock value)? generic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RowsLayoutBlock value)? rows,
    TResult Function(CondensedLayoutBlock value)? condensed,
    TResult Function(AskLayoutBlock value)? ask,
    TResult Function(GenericLayoutBlock value)? generic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this LayoutBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutBlockCopyWith<$Res> {
  factory $LayoutBlockCopyWith(
          LayoutBlock value, $Res Function(LayoutBlock) then) =
      _$LayoutBlockCopyWithImpl<$Res, LayoutBlock>;
}

/// @nodoc
class _$LayoutBlockCopyWithImpl<$Res, $Val extends LayoutBlock>
    implements $LayoutBlockCopyWith<$Res> {
  _$LayoutBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RowsLayoutBlockImplCopyWith<$Res> {
  factory _$$RowsLayoutBlockImplCopyWith(_$RowsLayoutBlockImpl value,
          $Res Function(_$RowsLayoutBlockImpl) then) =
      __$$RowsLayoutBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DisplayObject> display, int? truncateAfter});
}

/// @nodoc
class __$$RowsLayoutBlockImplCopyWithImpl<$Res>
    extends _$LayoutBlockCopyWithImpl<$Res, _$RowsLayoutBlockImpl>
    implements _$$RowsLayoutBlockImplCopyWith<$Res> {
  __$$RowsLayoutBlockImplCopyWithImpl(
      _$RowsLayoutBlockImpl _value, $Res Function(_$RowsLayoutBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? display = null,
    Object? truncateAfter = freezed,
  }) {
    return _then(_$RowsLayoutBlockImpl(
      display: null == display
          ? _value._display
          : display // ignore: cast_nullable_to_non_nullable
              as List<DisplayObject>,
      truncateAfter: freezed == truncateAfter
          ? _value.truncateAfter
          : truncateAfter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RowsLayoutBlockImpl extends RowsLayoutBlock {
  const _$RowsLayoutBlockImpl(
      {required final List<DisplayObject> display,
      this.truncateAfter,
      final String? $type})
      : _display = display,
        $type = $type ?? 'rows',
        super._();

  factory _$RowsLayoutBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$RowsLayoutBlockImplFromJson(json);

  final List<DisplayObject> _display;
  @override
  List<DisplayObject> get display {
    if (_display is EqualUnmodifiableListView) return _display;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_display);
  }

  @override
  final int? truncateAfter;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LayoutBlock.rows(display: $display, truncateAfter: $truncateAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RowsLayoutBlockImpl &&
            const DeepCollectionEquality().equals(other._display, _display) &&
            (identical(other.truncateAfter, truncateAfter) ||
                other.truncateAfter == truncateAfter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_display), truncateAfter);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RowsLayoutBlockImplCopyWith<_$RowsLayoutBlockImpl> get copyWith =>
      __$$RowsLayoutBlockImplCopyWithImpl<_$RowsLayoutBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisplayObject> display, int? truncateAfter)
        rows,
    required TResult Function(int? truncateAfter, List<int>? blocks) condensed,
    required TResult Function(List<int> blocks, AttributionObject? attribution)
        ask,
    required TResult Function(String type, Map<String, dynamic> originalJson)
        generic,
  }) {
    return rows(display, truncateAfter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult? Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult? Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult? Function(String type, Map<String, dynamic> originalJson)? generic,
  }) {
    return rows?.call(display, truncateAfter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult Function(String type, Map<String, dynamic> originalJson)? generic,
    required TResult orElse(),
  }) {
    if (rows != null) {
      return rows(display, truncateAfter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RowsLayoutBlock value) rows,
    required TResult Function(CondensedLayoutBlock value) condensed,
    required TResult Function(AskLayoutBlock value) ask,
    required TResult Function(GenericLayoutBlock value) generic,
  }) {
    return rows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RowsLayoutBlock value)? rows,
    TResult? Function(CondensedLayoutBlock value)? condensed,
    TResult? Function(AskLayoutBlock value)? ask,
    TResult? Function(GenericLayoutBlock value)? generic,
  }) {
    return rows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RowsLayoutBlock value)? rows,
    TResult Function(CondensedLayoutBlock value)? condensed,
    TResult Function(AskLayoutBlock value)? ask,
    TResult Function(GenericLayoutBlock value)? generic,
    required TResult orElse(),
  }) {
    if (rows != null) {
      return rows(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RowsLayoutBlockImplToJson(
      this,
    );
  }
}

abstract class RowsLayoutBlock extends LayoutBlock {
  const factory RowsLayoutBlock(
      {required final List<DisplayObject> display,
      final int? truncateAfter}) = _$RowsLayoutBlockImpl;
  const RowsLayoutBlock._() : super._();

  factory RowsLayoutBlock.fromJson(Map<String, dynamic> json) =
      _$RowsLayoutBlockImpl.fromJson;

  List<DisplayObject> get display;
  int? get truncateAfter;

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RowsLayoutBlockImplCopyWith<_$RowsLayoutBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CondensedLayoutBlockImplCopyWith<$Res> {
  factory _$$CondensedLayoutBlockImplCopyWith(_$CondensedLayoutBlockImpl value,
          $Res Function(_$CondensedLayoutBlockImpl) then) =
      __$$CondensedLayoutBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? truncateAfter, List<int>? blocks});
}

/// @nodoc
class __$$CondensedLayoutBlockImplCopyWithImpl<$Res>
    extends _$LayoutBlockCopyWithImpl<$Res, _$CondensedLayoutBlockImpl>
    implements _$$CondensedLayoutBlockImplCopyWith<$Res> {
  __$$CondensedLayoutBlockImplCopyWithImpl(_$CondensedLayoutBlockImpl _value,
      $Res Function(_$CondensedLayoutBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? truncateAfter = freezed,
    Object? blocks = freezed,
  }) {
    return _then(_$CondensedLayoutBlockImpl(
      truncateAfter: freezed == truncateAfter
          ? _value.truncateAfter
          : truncateAfter // ignore: cast_nullable_to_non_nullable
              as int?,
      blocks: freezed == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CondensedLayoutBlockImpl extends CondensedLayoutBlock {
  const _$CondensedLayoutBlockImpl(
      {this.truncateAfter, final List<int>? blocks, final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'condensed',
        super._();

  factory _$CondensedLayoutBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$CondensedLayoutBlockImplFromJson(json);

  @override
  final int? truncateAfter;
  final List<int>? _blocks;
  @override
  List<int>? get blocks {
    final value = _blocks;
    if (value == null) return null;
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LayoutBlock.condensed(truncateAfter: $truncateAfter, blocks: $blocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CondensedLayoutBlockImpl &&
            (identical(other.truncateAfter, truncateAfter) ||
                other.truncateAfter == truncateAfter) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, truncateAfter, const DeepCollectionEquality().hash(_blocks));

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CondensedLayoutBlockImplCopyWith<_$CondensedLayoutBlockImpl>
      get copyWith =>
          __$$CondensedLayoutBlockImplCopyWithImpl<_$CondensedLayoutBlockImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisplayObject> display, int? truncateAfter)
        rows,
    required TResult Function(int? truncateAfter, List<int>? blocks) condensed,
    required TResult Function(List<int> blocks, AttributionObject? attribution)
        ask,
    required TResult Function(String type, Map<String, dynamic> originalJson)
        generic,
  }) {
    return condensed(truncateAfter, blocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult? Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult? Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult? Function(String type, Map<String, dynamic> originalJson)? generic,
  }) {
    return condensed?.call(truncateAfter, blocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult Function(String type, Map<String, dynamic> originalJson)? generic,
    required TResult orElse(),
  }) {
    if (condensed != null) {
      return condensed(truncateAfter, blocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RowsLayoutBlock value) rows,
    required TResult Function(CondensedLayoutBlock value) condensed,
    required TResult Function(AskLayoutBlock value) ask,
    required TResult Function(GenericLayoutBlock value) generic,
  }) {
    return condensed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RowsLayoutBlock value)? rows,
    TResult? Function(CondensedLayoutBlock value)? condensed,
    TResult? Function(AskLayoutBlock value)? ask,
    TResult? Function(GenericLayoutBlock value)? generic,
  }) {
    return condensed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RowsLayoutBlock value)? rows,
    TResult Function(CondensedLayoutBlock value)? condensed,
    TResult Function(AskLayoutBlock value)? ask,
    TResult Function(GenericLayoutBlock value)? generic,
    required TResult orElse(),
  }) {
    if (condensed != null) {
      return condensed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CondensedLayoutBlockImplToJson(
      this,
    );
  }
}

abstract class CondensedLayoutBlock extends LayoutBlock {
  const factory CondensedLayoutBlock(
      {final int? truncateAfter,
      final List<int>? blocks}) = _$CondensedLayoutBlockImpl;
  const CondensedLayoutBlock._() : super._();

  factory CondensedLayoutBlock.fromJson(Map<String, dynamic> json) =
      _$CondensedLayoutBlockImpl.fromJson;

  int? get truncateAfter;
  List<int>? get blocks;

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CondensedLayoutBlockImplCopyWith<_$CondensedLayoutBlockImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AskLayoutBlockImplCopyWith<$Res> {
  factory _$$AskLayoutBlockImplCopyWith(_$AskLayoutBlockImpl value,
          $Res Function(_$AskLayoutBlockImpl) then) =
      __$$AskLayoutBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> blocks, AttributionObject? attribution});

  $AttributionObjectCopyWith<$Res>? get attribution;
}

/// @nodoc
class __$$AskLayoutBlockImplCopyWithImpl<$Res>
    extends _$LayoutBlockCopyWithImpl<$Res, _$AskLayoutBlockImpl>
    implements _$$AskLayoutBlockImplCopyWith<$Res> {
  __$$AskLayoutBlockImplCopyWithImpl(
      _$AskLayoutBlockImpl _value, $Res Function(_$AskLayoutBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocks = null,
    Object? attribution = freezed,
  }) {
    return _then(_$AskLayoutBlockImpl(
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as AttributionObject?,
    ));
  }

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributionObjectCopyWith<$Res>? get attribution {
    if (_value.attribution == null) {
      return null;
    }

    return $AttributionObjectCopyWith<$Res>(_value.attribution!, (value) {
      return _then(_value.copyWith(attribution: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$AskLayoutBlockImpl extends AskLayoutBlock {
  const _$AskLayoutBlockImpl(
      {required final List<int> blocks, this.attribution, final String? $type})
      : _blocks = blocks,
        $type = $type ?? 'ask',
        super._();

  factory _$AskLayoutBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$AskLayoutBlockImplFromJson(json);

  final List<int> _blocks;
  @override
  List<int> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  final AttributionObject? attribution;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LayoutBlock.ask(blocks: $blocks, attribution: $attribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskLayoutBlockImpl &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_blocks), attribution);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskLayoutBlockImplCopyWith<_$AskLayoutBlockImpl> get copyWith =>
      __$$AskLayoutBlockImplCopyWithImpl<_$AskLayoutBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisplayObject> display, int? truncateAfter)
        rows,
    required TResult Function(int? truncateAfter, List<int>? blocks) condensed,
    required TResult Function(List<int> blocks, AttributionObject? attribution)
        ask,
    required TResult Function(String type, Map<String, dynamic> originalJson)
        generic,
  }) {
    return ask(blocks, attribution);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult? Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult? Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult? Function(String type, Map<String, dynamic> originalJson)? generic,
  }) {
    return ask?.call(blocks, attribution);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult Function(String type, Map<String, dynamic> originalJson)? generic,
    required TResult orElse(),
  }) {
    if (ask != null) {
      return ask(blocks, attribution);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RowsLayoutBlock value) rows,
    required TResult Function(CondensedLayoutBlock value) condensed,
    required TResult Function(AskLayoutBlock value) ask,
    required TResult Function(GenericLayoutBlock value) generic,
  }) {
    return ask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RowsLayoutBlock value)? rows,
    TResult? Function(CondensedLayoutBlock value)? condensed,
    TResult? Function(AskLayoutBlock value)? ask,
    TResult? Function(GenericLayoutBlock value)? generic,
  }) {
    return ask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RowsLayoutBlock value)? rows,
    TResult Function(CondensedLayoutBlock value)? condensed,
    TResult Function(AskLayoutBlock value)? ask,
    TResult Function(GenericLayoutBlock value)? generic,
    required TResult orElse(),
  }) {
    if (ask != null) {
      return ask(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AskLayoutBlockImplToJson(
      this,
    );
  }
}

abstract class AskLayoutBlock extends LayoutBlock {
  const factory AskLayoutBlock(
      {required final List<int> blocks,
      final AttributionObject? attribution}) = _$AskLayoutBlockImpl;
  const AskLayoutBlock._() : super._();

  factory AskLayoutBlock.fromJson(Map<String, dynamic> json) =
      _$AskLayoutBlockImpl.fromJson;

  List<int> get blocks;
  AttributionObject? get attribution;

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskLayoutBlockImplCopyWith<_$AskLayoutBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericLayoutBlockImplCopyWith<$Res> {
  factory _$$GenericLayoutBlockImplCopyWith(_$GenericLayoutBlockImpl value,
          $Res Function(_$GenericLayoutBlockImpl) then) =
      __$$GenericLayoutBlockImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, Map<String, dynamic> originalJson});
}

/// @nodoc
class __$$GenericLayoutBlockImplCopyWithImpl<$Res>
    extends _$LayoutBlockCopyWithImpl<$Res, _$GenericLayoutBlockImpl>
    implements _$$GenericLayoutBlockImplCopyWith<$Res> {
  __$$GenericLayoutBlockImplCopyWithImpl(_$GenericLayoutBlockImpl _value,
      $Res Function(_$GenericLayoutBlockImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? originalJson = null,
  }) {
    return _then(_$GenericLayoutBlockImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      originalJson: null == originalJson
          ? _value._originalJson
          : originalJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericLayoutBlockImpl extends GenericLayoutBlock {
  const _$GenericLayoutBlockImpl(
      {required this.type, required final Map<String, dynamic> originalJson})
      : _originalJson = originalJson,
        super._();

  factory _$GenericLayoutBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericLayoutBlockImplFromJson(json);

  @override
  final String type;
  final Map<String, dynamic> _originalJson;
  @override
  Map<String, dynamic> get originalJson {
    if (_originalJson is EqualUnmodifiableMapView) return _originalJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_originalJson);
  }

  @override
  String toString() {
    return 'LayoutBlock.generic(type: $type, originalJson: $originalJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericLayoutBlockImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._originalJson, _originalJson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_originalJson));

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericLayoutBlockImplCopyWith<_$GenericLayoutBlockImpl> get copyWith =>
      __$$GenericLayoutBlockImplCopyWithImpl<_$GenericLayoutBlockImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisplayObject> display, int? truncateAfter)
        rows,
    required TResult Function(int? truncateAfter, List<int>? blocks) condensed,
    required TResult Function(List<int> blocks, AttributionObject? attribution)
        ask,
    required TResult Function(String type, Map<String, dynamic> originalJson)
        generic,
  }) {
    return generic(type, originalJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult? Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult? Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult? Function(String type, Map<String, dynamic> originalJson)? generic,
  }) {
    return generic?.call(type, originalJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisplayObject> display, int? truncateAfter)? rows,
    TResult Function(int? truncateAfter, List<int>? blocks)? condensed,
    TResult Function(List<int> blocks, AttributionObject? attribution)? ask,
    TResult Function(String type, Map<String, dynamic> originalJson)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(type, originalJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RowsLayoutBlock value) rows,
    required TResult Function(CondensedLayoutBlock value) condensed,
    required TResult Function(AskLayoutBlock value) ask,
    required TResult Function(GenericLayoutBlock value) generic,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RowsLayoutBlock value)? rows,
    TResult? Function(CondensedLayoutBlock value)? condensed,
    TResult? Function(AskLayoutBlock value)? ask,
    TResult? Function(GenericLayoutBlock value)? generic,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RowsLayoutBlock value)? rows,
    TResult Function(CondensedLayoutBlock value)? condensed,
    TResult Function(AskLayoutBlock value)? ask,
    TResult Function(GenericLayoutBlock value)? generic,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericLayoutBlockImplToJson(
      this,
    );
  }
}

abstract class GenericLayoutBlock extends LayoutBlock {
  const factory GenericLayoutBlock(
          {required final String type,
          required final Map<String, dynamic> originalJson}) =
      _$GenericLayoutBlockImpl;
  const GenericLayoutBlock._() : super._();

  factory GenericLayoutBlock.fromJson(Map<String, dynamic> json) =
      _$GenericLayoutBlockImpl.fromJson;

  String get type;
  Map<String, dynamic> get originalJson;

  /// Create a copy of LayoutBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericLayoutBlockImplCopyWith<_$GenericLayoutBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayObject _$DisplayObjectFromJson(Map<String, dynamic> json) {
  return _DisplayObject.fromJson(json);
}

/// @nodoc
mixin _$DisplayObject {
  List<int> get blocks => throw _privateConstructorUsedError;
  DisplayMode? get mode => throw _privateConstructorUsedError;

  /// Serializes this DisplayObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayObjectCopyWith<DisplayObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayObjectCopyWith<$Res> {
  factory $DisplayObjectCopyWith(
          DisplayObject value, $Res Function(DisplayObject) then) =
      _$DisplayObjectCopyWithImpl<$Res, DisplayObject>;
  @useResult
  $Res call({List<int> blocks, DisplayMode? mode});

  $DisplayModeCopyWith<$Res>? get mode;
}

/// @nodoc
class _$DisplayObjectCopyWithImpl<$Res, $Val extends DisplayObject>
    implements $DisplayObjectCopyWith<$Res> {
  _$DisplayObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocks = null,
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DisplayMode?,
    ) as $Val);
  }

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DisplayModeCopyWith<$Res>? get mode {
    if (_value.mode == null) {
      return null;
    }

    return $DisplayModeCopyWith<$Res>(_value.mode!, (value) {
      return _then(_value.copyWith(mode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DisplayObjectImplCopyWith<$Res>
    implements $DisplayObjectCopyWith<$Res> {
  factory _$$DisplayObjectImplCopyWith(
          _$DisplayObjectImpl value, $Res Function(_$DisplayObjectImpl) then) =
      __$$DisplayObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> blocks, DisplayMode? mode});

  @override
  $DisplayModeCopyWith<$Res>? get mode;
}

/// @nodoc
class __$$DisplayObjectImplCopyWithImpl<$Res>
    extends _$DisplayObjectCopyWithImpl<$Res, _$DisplayObjectImpl>
    implements _$$DisplayObjectImplCopyWith<$Res> {
  __$$DisplayObjectImplCopyWithImpl(
      _$DisplayObjectImpl _value, $Res Function(_$DisplayObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocks = null,
    Object? mode = freezed,
  }) {
    return _then(_$DisplayObjectImpl(
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<int>,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DisplayMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayObjectImpl implements _DisplayObject {
  _$DisplayObjectImpl({required final List<int> blocks, this.mode})
      : _blocks = blocks;

  factory _$DisplayObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayObjectImplFromJson(json);

  final List<int> _blocks;
  @override
  List<int> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  final DisplayMode? mode;

  @override
  String toString() {
    return 'DisplayObject(blocks: $blocks, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayObjectImpl &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_blocks), mode);

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayObjectImplCopyWith<_$DisplayObjectImpl> get copyWith =>
      __$$DisplayObjectImplCopyWithImpl<_$DisplayObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayObjectImplToJson(
      this,
    );
  }
}

abstract class _DisplayObject implements DisplayObject {
  factory _DisplayObject(
      {required final List<int> blocks,
      final DisplayMode? mode}) = _$DisplayObjectImpl;

  factory _DisplayObject.fromJson(Map<String, dynamic> json) =
      _$DisplayObjectImpl.fromJson;

  @override
  List<int> get blocks;
  @override
  DisplayMode? get mode;

  /// Create a copy of DisplayObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayObjectImplCopyWith<_$DisplayObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DisplayMode _$DisplayModeFromJson(Map<String, dynamic> json) {
  return _DisplayMode.fromJson(json);
}

/// @nodoc
mixin _$DisplayMode {
  String get type => throw _privateConstructorUsedError;

  /// Serializes this DisplayMode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DisplayMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisplayModeCopyWith<DisplayMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayModeCopyWith<$Res> {
  factory $DisplayModeCopyWith(
          DisplayMode value, $Res Function(DisplayMode) then) =
      _$DisplayModeCopyWithImpl<$Res, DisplayMode>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$DisplayModeCopyWithImpl<$Res, $Val extends DisplayMode>
    implements $DisplayModeCopyWith<$Res> {
  _$DisplayModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisplayModeImplCopyWith<$Res>
    implements $DisplayModeCopyWith<$Res> {
  factory _$$DisplayModeImplCopyWith(
          _$DisplayModeImpl value, $Res Function(_$DisplayModeImpl) then) =
      __$$DisplayModeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$DisplayModeImplCopyWithImpl<$Res>
    extends _$DisplayModeCopyWithImpl<$Res, _$DisplayModeImpl>
    implements _$$DisplayModeImplCopyWith<$Res> {
  __$$DisplayModeImplCopyWithImpl(
      _$DisplayModeImpl _value, $Res Function(_$DisplayModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$DisplayModeImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisplayModeImpl implements _DisplayMode {
  _$DisplayModeImpl({required this.type});

  factory _$DisplayModeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisplayModeImplFromJson(json);

  @override
  final String type;

  @override
  String toString() {
    return 'DisplayMode(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayModeImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DisplayMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayModeImplCopyWith<_$DisplayModeImpl> get copyWith =>
      __$$DisplayModeImplCopyWithImpl<_$DisplayModeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisplayModeImplToJson(
      this,
    );
  }
}

abstract class _DisplayMode implements DisplayMode {
  factory _DisplayMode({required final String type}) = _$DisplayModeImpl;

  factory _DisplayMode.fromJson(Map<String, dynamic> json) =
      _$DisplayModeImpl.fromJson;

  @override
  String get type;

  /// Create a copy of DisplayMode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayModeImplCopyWith<_$DisplayModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributionObject _$AttributionObjectFromJson(Map<String, dynamic> json) {
  return _AttributionObject.fromJson(json);
}

/// @nodoc
mixin _$AttributionObject {
  String get type => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  PostDetails? get post => throw _privateConstructorUsedError;
  TumblrBlog? get blog => throw _privateConstructorUsedError;
  String? get appName => throw _privateConstructorUsedError;
  String? get displayText => throw _privateConstructorUsedError;
  MediaObject? get logo => throw _privateConstructorUsedError;

  /// Serializes this AttributionObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributionObjectCopyWith<AttributionObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributionObjectCopyWith<$Res> {
  factory $AttributionObjectCopyWith(
          AttributionObject value, $Res Function(AttributionObject) then) =
      _$AttributionObjectCopyWithImpl<$Res, AttributionObject>;
  @useResult
  $Res call(
      {String type,
      String? url,
      PostDetails? post,
      TumblrBlog? blog,
      String? appName,
      String? displayText,
      MediaObject? logo});

  $PostDetailsCopyWith<$Res>? get post;
  $TumblrBlogCopyWith<$Res>? get blog;
  $MediaObjectCopyWith<$Res>? get logo;
}

/// @nodoc
class _$AttributionObjectCopyWithImpl<$Res, $Val extends AttributionObject>
    implements $AttributionObjectCopyWith<$Res> {
  _$AttributionObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = freezed,
    Object? post = freezed,
    Object? blog = freezed,
    Object? appName = freezed,
    Object? displayText = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDetails?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: freezed == displayText
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
    ) as $Val);
  }

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostDetailsCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostDetailsCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TumblrBlogCopyWith<$Res>? get blog {
    if (_value.blog == null) {
      return null;
    }

    return $TumblrBlogCopyWith<$Res>(_value.blog!, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaObjectCopyWith<$Res>? get logo {
    if (_value.logo == null) {
      return null;
    }

    return $MediaObjectCopyWith<$Res>(_value.logo!, (value) {
      return _then(_value.copyWith(logo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttributionObjectImplCopyWith<$Res>
    implements $AttributionObjectCopyWith<$Res> {
  factory _$$AttributionObjectImplCopyWith(_$AttributionObjectImpl value,
          $Res Function(_$AttributionObjectImpl) then) =
      __$$AttributionObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String? url,
      PostDetails? post,
      TumblrBlog? blog,
      String? appName,
      String? displayText,
      MediaObject? logo});

  @override
  $PostDetailsCopyWith<$Res>? get post;
  @override
  $TumblrBlogCopyWith<$Res>? get blog;
  @override
  $MediaObjectCopyWith<$Res>? get logo;
}

/// @nodoc
class __$$AttributionObjectImplCopyWithImpl<$Res>
    extends _$AttributionObjectCopyWithImpl<$Res, _$AttributionObjectImpl>
    implements _$$AttributionObjectImplCopyWith<$Res> {
  __$$AttributionObjectImplCopyWithImpl(_$AttributionObjectImpl _value,
      $Res Function(_$AttributionObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = freezed,
    Object? post = freezed,
    Object? blog = freezed,
    Object? appName = freezed,
    Object? displayText = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$AttributionObjectImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDetails?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      appName: freezed == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String?,
      displayText: freezed == displayText
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributionObjectImpl extends _AttributionObject {
  const _$AttributionObjectImpl(
      {required this.type,
      this.url,
      this.post,
      this.blog,
      this.appName,
      this.displayText,
      this.logo})
      : super._();

  factory _$AttributionObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributionObjectImplFromJson(json);

  @override
  final String type;
  @override
  final String? url;
  @override
  final PostDetails? post;
  @override
  final TumblrBlog? blog;
  @override
  final String? appName;
  @override
  final String? displayText;
  @override
  final MediaObject? logo;

  @override
  String toString() {
    return 'AttributionObject(type: $type, url: $url, post: $post, blog: $blog, appName: $appName, displayText: $displayText, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributionObjectImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.displayText, displayText) ||
                other.displayText == displayText) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, url, post, blog, appName, displayText, logo);

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributionObjectImplCopyWith<_$AttributionObjectImpl> get copyWith =>
      __$$AttributionObjectImplCopyWithImpl<_$AttributionObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributionObjectImplToJson(
      this,
    );
  }
}

abstract class _AttributionObject extends AttributionObject {
  const factory _AttributionObject(
      {required final String type,
      final String? url,
      final PostDetails? post,
      final TumblrBlog? blog,
      final String? appName,
      final String? displayText,
      final MediaObject? logo}) = _$AttributionObjectImpl;
  const _AttributionObject._() : super._();

  factory _AttributionObject.fromJson(Map<String, dynamic> json) =
      _$AttributionObjectImpl.fromJson;

  @override
  String get type;
  @override
  String? get url;
  @override
  PostDetails? get post;
  @override
  TumblrBlog? get blog;
  @override
  String? get appName;
  @override
  String? get displayText;
  @override
  MediaObject? get logo;

  /// Create a copy of AttributionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributionObjectImplCopyWith<_$AttributionObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
