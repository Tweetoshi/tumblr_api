// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embed_iframe_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbedIframeObject _$EmbedIframeObjectFromJson(Map<String, dynamic> json) {
  return _EmbedIframeObject.fromJson(json);
}

/// @nodoc
mixin _$EmbedIframeObject {
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Serializes this EmbedIframeObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbedIframeObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbedIframeObjectCopyWith<EmbedIframeObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedIframeObjectCopyWith<$Res> {
  factory $EmbedIframeObjectCopyWith(
          EmbedIframeObject value, $Res Function(EmbedIframeObject) then) =
      _$EmbedIframeObjectCopyWithImpl<$Res, EmbedIframeObject>;
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class _$EmbedIframeObjectCopyWithImpl<$Res, $Val extends EmbedIframeObject>
    implements $EmbedIframeObjectCopyWith<$Res> {
  _$EmbedIframeObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbedIframeObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbedIframeObjectImplCopyWith<$Res>
    implements $EmbedIframeObjectCopyWith<$Res> {
  factory _$$EmbedIframeObjectImplCopyWith(_$EmbedIframeObjectImpl value,
          $Res Function(_$EmbedIframeObjectImpl) then) =
      __$$EmbedIframeObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int width, int height});
}

/// @nodoc
class __$$EmbedIframeObjectImplCopyWithImpl<$Res>
    extends _$EmbedIframeObjectCopyWithImpl<$Res, _$EmbedIframeObjectImpl>
    implements _$$EmbedIframeObjectImplCopyWith<$Res> {
  __$$EmbedIframeObjectImplCopyWithImpl(_$EmbedIframeObjectImpl _value,
      $Res Function(_$EmbedIframeObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbedIframeObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$EmbedIframeObjectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbedIframeObjectImpl extends _EmbedIframeObject {
  const _$EmbedIframeObjectImpl(
      {required this.url, required this.width, required this.height})
      : super._();

  factory _$EmbedIframeObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbedIframeObjectImplFromJson(json);

  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'EmbedIframeObject(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbedIframeObjectImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  /// Create a copy of EmbedIframeObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbedIframeObjectImplCopyWith<_$EmbedIframeObjectImpl> get copyWith =>
      __$$EmbedIframeObjectImplCopyWithImpl<_$EmbedIframeObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbedIframeObjectImplToJson(
      this,
    );
  }
}

abstract class _EmbedIframeObject extends EmbedIframeObject {
  const factory _EmbedIframeObject(
      {required final String url,
      required final int width,
      required final int height}) = _$EmbedIframeObjectImpl;
  const _EmbedIframeObject._() : super._();

  factory _EmbedIframeObject.fromJson(Map<String, dynamic> json) =
      _$EmbedIframeObjectImpl.fromJson;

  @override
  String get url;
  @override
  int get width;
  @override
  int get height;

  /// Create a copy of EmbedIframeObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbedIframeObjectImplCopyWith<_$EmbedIframeObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
