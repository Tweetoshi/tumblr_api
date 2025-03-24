// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarImage _$AvatarImageFromJson(Map<String, dynamic> json) {
  return _AvatarImage.fromJson(json);
}

/// @nodoc
mixin _$AvatarImage {
  String get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this AvatarImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarImageCopyWith<AvatarImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarImageCopyWith<$Res> {
  factory $AvatarImageCopyWith(
          AvatarImage value, $Res Function(AvatarImage) then) =
      _$AvatarImageCopyWithImpl<$Res, AvatarImage>;
  @useResult
  $Res call({String url, int? width, int? height});
}

/// @nodoc
class _$AvatarImageCopyWithImpl<$Res, $Val extends AvatarImage>
    implements $AvatarImageCopyWith<$Res> {
  _$AvatarImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvatarImageImplCopyWith<$Res>
    implements $AvatarImageCopyWith<$Res> {
  factory _$$AvatarImageImplCopyWith(
          _$AvatarImageImpl value, $Res Function(_$AvatarImageImpl) then) =
      __$$AvatarImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int? width, int? height});
}

/// @nodoc
class __$$AvatarImageImplCopyWithImpl<$Res>
    extends _$AvatarImageCopyWithImpl<$Res, _$AvatarImageImpl>
    implements _$$AvatarImageImplCopyWith<$Res> {
  __$$AvatarImageImplCopyWithImpl(
      _$AvatarImageImpl _value, $Res Function(_$AvatarImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$AvatarImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarImageImpl extends _AvatarImage {
  const _$AvatarImageImpl({required this.url, this.width, this.height})
      : super._();

  factory _$AvatarImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarImageImplFromJson(json);

  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'AvatarImage(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarImageImplCopyWith<_$AvatarImageImpl> get copyWith =>
      __$$AvatarImageImplCopyWithImpl<_$AvatarImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarImageImplToJson(
      this,
    );
  }
}

abstract class _AvatarImage extends AvatarImage {
  const factory _AvatarImage(
      {required final String url,
      final int? width,
      final int? height}) = _$AvatarImageImpl;
  const _AvatarImage._() : super._();

  factory _AvatarImage.fromJson(Map<String, dynamic> json) =
      _$AvatarImageImpl.fromJson;

  @override
  String get url;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of AvatarImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarImageImplCopyWith<_$AvatarImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
