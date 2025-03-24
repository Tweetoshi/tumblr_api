// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TumblrUser _$TumblrUserFromJson(Map<String, dynamic> json) {
  return _TumblrUser.fromJson(json);
}

/// @nodoc
mixin _$TumblrUser {
  int? get following => throw _privateConstructorUsedError;
  String? get defaultPostFormat => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  List<TumblrBlog>? get blogs => throw _privateConstructorUsedError;

  /// Serializes this TumblrUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TumblrUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TumblrUserCopyWith<TumblrUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TumblrUserCopyWith<$Res> {
  factory $TumblrUserCopyWith(
          TumblrUser value, $Res Function(TumblrUser) then) =
      _$TumblrUserCopyWithImpl<$Res, TumblrUser>;
  @useResult
  $Res call(
      {int? following,
      String? defaultPostFormat,
      String? name,
      int? likes,
      List<TumblrBlog>? blogs});
}

/// @nodoc
class _$TumblrUserCopyWithImpl<$Res, $Val extends TumblrUser>
    implements $TumblrUserCopyWith<$Res> {
  _$TumblrUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TumblrUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = freezed,
    Object? defaultPostFormat = freezed,
    Object? name = freezed,
    Object? likes = freezed,
    Object? blogs = freezed,
  }) {
    return _then(_value.copyWith(
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultPostFormat: freezed == defaultPostFormat
          ? _value.defaultPostFormat
          : defaultPostFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      blogs: freezed == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<TumblrBlog>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TumblrUserImplCopyWith<$Res>
    implements $TumblrUserCopyWith<$Res> {
  factory _$$TumblrUserImplCopyWith(
          _$TumblrUserImpl value, $Res Function(_$TumblrUserImpl) then) =
      __$$TumblrUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? following,
      String? defaultPostFormat,
      String? name,
      int? likes,
      List<TumblrBlog>? blogs});
}

/// @nodoc
class __$$TumblrUserImplCopyWithImpl<$Res>
    extends _$TumblrUserCopyWithImpl<$Res, _$TumblrUserImpl>
    implements _$$TumblrUserImplCopyWith<$Res> {
  __$$TumblrUserImplCopyWithImpl(
      _$TumblrUserImpl _value, $Res Function(_$TumblrUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of TumblrUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? following = freezed,
    Object? defaultPostFormat = freezed,
    Object? name = freezed,
    Object? likes = freezed,
    Object? blogs = freezed,
  }) {
    return _then(_$TumblrUserImpl(
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultPostFormat: freezed == defaultPostFormat
          ? _value.defaultPostFormat
          : defaultPostFormat // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      blogs: freezed == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<TumblrBlog>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TumblrUserImpl extends _TumblrUser {
  const _$TumblrUserImpl(
      {this.following,
      this.defaultPostFormat,
      this.name,
      this.likes,
      final List<TumblrBlog>? blogs})
      : _blogs = blogs,
        super._();

  factory _$TumblrUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TumblrUserImplFromJson(json);

  @override
  final int? following;
  @override
  final String? defaultPostFormat;
  @override
  final String? name;
  @override
  final int? likes;
  final List<TumblrBlog>? _blogs;
  @override
  List<TumblrBlog>? get blogs {
    final value = _blogs;
    if (value == null) return null;
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TumblrUser(following: $following, defaultPostFormat: $defaultPostFormat, name: $name, likes: $likes, blogs: $blogs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TumblrUserImpl &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.defaultPostFormat, defaultPostFormat) ||
                other.defaultPostFormat == defaultPostFormat) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, following, defaultPostFormat,
      name, likes, const DeepCollectionEquality().hash(_blogs));

  /// Create a copy of TumblrUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TumblrUserImplCopyWith<_$TumblrUserImpl> get copyWith =>
      __$$TumblrUserImplCopyWithImpl<_$TumblrUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TumblrUserImplToJson(
      this,
    );
  }
}

abstract class _TumblrUser extends TumblrUser {
  const factory _TumblrUser(
      {final int? following,
      final String? defaultPostFormat,
      final String? name,
      final int? likes,
      final List<TumblrBlog>? blogs}) = _$TumblrUserImpl;
  const _TumblrUser._() : super._();

  factory _TumblrUser.fromJson(Map<String, dynamic> json) =
      _$TumblrUserImpl.fromJson;

  @override
  int? get following;
  @override
  String? get defaultPostFormat;
  @override
  String? get name;
  @override
  int? get likes;
  @override
  List<TumblrBlog>? get blogs;

  /// Create a copy of TumblrUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TumblrUserImplCopyWith<_$TumblrUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
