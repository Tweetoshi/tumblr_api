// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaObject _$MediaObjectFromJson(Map<String, dynamic> json) {
  return _MediaObject.fromJson(json);
}

/// @nodoc
mixin _$MediaObject {
  String get url => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  bool? get originalDimensionsMissing => throw _privateConstructorUsedError;
  bool? get cropped => throw _privateConstructorUsedError;
  bool? get hasOriginalDimensions => throw _privateConstructorUsedError;
  MediaObject? get poster => throw _privateConstructorUsedError;
  Map<String, String>? get colors => throw _privateConstructorUsedError;

  /// Serializes this MediaObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaObjectCopyWith<MediaObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaObjectCopyWith<$Res> {
  factory $MediaObjectCopyWith(
          MediaObject value, $Res Function(MediaObject) then) =
      _$MediaObjectCopyWithImpl<$Res, MediaObject>;
  @useResult
  $Res call(
      {String url,
      String? type,
      int? width,
      int? height,
      bool? originalDimensionsMissing,
      bool? cropped,
      bool? hasOriginalDimensions,
      MediaObject? poster,
      Map<String, String>? colors});

  $MediaObjectCopyWith<$Res>? get poster;
}

/// @nodoc
class _$MediaObjectCopyWithImpl<$Res, $Val extends MediaObject>
    implements $MediaObjectCopyWith<$Res> {
  _$MediaObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? originalDimensionsMissing = freezed,
    Object? cropped = freezed,
    Object? hasOriginalDimensions = freezed,
    Object? poster = freezed,
    Object? colors = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      originalDimensionsMissing: freezed == originalDimensionsMissing
          ? _value.originalDimensionsMissing
          : originalDimensionsMissing // ignore: cast_nullable_to_non_nullable
              as bool?,
      cropped: freezed == cropped
          ? _value.cropped
          : cropped // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasOriginalDimensions: freezed == hasOriginalDimensions
          ? _value.hasOriginalDimensions
          : hasOriginalDimensions // ignore: cast_nullable_to_non_nullable
              as bool?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaObjectCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $MediaObjectCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaObjectImplCopyWith<$Res>
    implements $MediaObjectCopyWith<$Res> {
  factory _$$MediaObjectImplCopyWith(
          _$MediaObjectImpl value, $Res Function(_$MediaObjectImpl) then) =
      __$$MediaObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String? type,
      int? width,
      int? height,
      bool? originalDimensionsMissing,
      bool? cropped,
      bool? hasOriginalDimensions,
      MediaObject? poster,
      Map<String, String>? colors});

  @override
  $MediaObjectCopyWith<$Res>? get poster;
}

/// @nodoc
class __$$MediaObjectImplCopyWithImpl<$Res>
    extends _$MediaObjectCopyWithImpl<$Res, _$MediaObjectImpl>
    implements _$$MediaObjectImplCopyWith<$Res> {
  __$$MediaObjectImplCopyWithImpl(
      _$MediaObjectImpl _value, $Res Function(_$MediaObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? originalDimensionsMissing = freezed,
    Object? cropped = freezed,
    Object? hasOriginalDimensions = freezed,
    Object? poster = freezed,
    Object? colors = freezed,
  }) {
    return _then(_$MediaObjectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      originalDimensionsMissing: freezed == originalDimensionsMissing
          ? _value.originalDimensionsMissing
          : originalDimensionsMissing // ignore: cast_nullable_to_non_nullable
              as bool?,
      cropped: freezed == cropped
          ? _value.cropped
          : cropped // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasOriginalDimensions: freezed == hasOriginalDimensions
          ? _value.hasOriginalDimensions
          : hasOriginalDimensions // ignore: cast_nullable_to_non_nullable
              as bool?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as MediaObject?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaObjectImpl extends _MediaObject {
  const _$MediaObjectImpl(
      {required this.url,
      this.type,
      this.width,
      this.height,
      this.originalDimensionsMissing,
      this.cropped,
      this.hasOriginalDimensions,
      this.poster,
      final Map<String, String>? colors})
      : _colors = colors,
        super._();

  factory _$MediaObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaObjectImplFromJson(json);

  @override
  final String url;
  @override
  final String? type;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final bool? originalDimensionsMissing;
  @override
  final bool? cropped;
  @override
  final bool? hasOriginalDimensions;
  @override
  final MediaObject? poster;
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
  String toString() {
    return 'MediaObject(url: $url, type: $type, width: $width, height: $height, originalDimensionsMissing: $originalDimensionsMissing, cropped: $cropped, hasOriginalDimensions: $hasOriginalDimensions, poster: $poster, colors: $colors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaObjectImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.originalDimensionsMissing,
                    originalDimensionsMissing) ||
                other.originalDimensionsMissing == originalDimensionsMissing) &&
            (identical(other.cropped, cropped) || other.cropped == cropped) &&
            (identical(other.hasOriginalDimensions, hasOriginalDimensions) ||
                other.hasOriginalDimensions == hasOriginalDimensions) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      type,
      width,
      height,
      originalDimensionsMissing,
      cropped,
      hasOriginalDimensions,
      poster,
      const DeepCollectionEquality().hash(_colors));

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaObjectImplCopyWith<_$MediaObjectImpl> get copyWith =>
      __$$MediaObjectImplCopyWithImpl<_$MediaObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaObjectImplToJson(
      this,
    );
  }
}

abstract class _MediaObject extends MediaObject {
  const factory _MediaObject(
      {required final String url,
      final String? type,
      final int? width,
      final int? height,
      final bool? originalDimensionsMissing,
      final bool? cropped,
      final bool? hasOriginalDimensions,
      final MediaObject? poster,
      final Map<String, String>? colors}) = _$MediaObjectImpl;
  const _MediaObject._() : super._();

  factory _MediaObject.fromJson(Map<String, dynamic> json) =
      _$MediaObjectImpl.fromJson;

  @override
  String get url;
  @override
  String? get type;
  @override
  int? get width;
  @override
  int? get height;
  @override
  bool? get originalDimensionsMissing;
  @override
  bool? get cropped;
  @override
  bool? get hasOriginalDimensions;
  @override
  MediaObject? get poster;
  @override
  Map<String, String>? get colors;

  /// Create a copy of MediaObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaObjectImplCopyWith<_$MediaObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
