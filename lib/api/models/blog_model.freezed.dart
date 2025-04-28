// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TumblrBlog _$TumblrBlogFromJson(Map<String, dynamic> json) {
  return _TumblrBlog.fromJson(json);
}

/// @nodoc
mixin _$TumblrBlog {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<AvatarImage>? get avatar => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get isBlockedFromPrimary => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  bool? get followed => throw _privateConstructorUsedError;
  bool? get primary => throw _privateConstructorUsedError;

  /// Serializes this TumblrBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TumblrBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TumblrBlogCopyWith<TumblrBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TumblrBlogCopyWith<$Res> {
  factory $TumblrBlogCopyWith(
          TumblrBlog value, $Res Function(TumblrBlog) then) =
      _$TumblrBlogCopyWithImpl<$Res, TumblrBlog>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      String? title,
      String? url,
      List<AvatarImage>? avatar,
      String? description,
      bool? isBlockedFromPrimary,
      int? followers,
      bool? followed,
      bool? primary});
}

/// @nodoc
class _$TumblrBlogCopyWithImpl<$Res, $Val extends TumblrBlog>
    implements $TumblrBlogCopyWith<$Res> {
  _$TumblrBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TumblrBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? title = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? description = freezed,
    Object? isBlockedFromPrimary = freezed,
    Object? followers = freezed,
    Object? followed = freezed,
    Object? primary = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as List<AvatarImage>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlockedFromPrimary: freezed == isBlockedFromPrimary
          ? _value.isBlockedFromPrimary
          : isBlockedFromPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TumblrBlogImplCopyWith<$Res>
    implements $TumblrBlogCopyWith<$Res> {
  factory _$$TumblrBlogImplCopyWith(
          _$TumblrBlogImpl value, $Res Function(_$TumblrBlogImpl) then) =
      __$$TumblrBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      String? title,
      String? url,
      List<AvatarImage>? avatar,
      String? description,
      bool? isBlockedFromPrimary,
      int? followers,
      bool? followed,
      bool? primary});
}

/// @nodoc
class __$$TumblrBlogImplCopyWithImpl<$Res>
    extends _$TumblrBlogCopyWithImpl<$Res, _$TumblrBlogImpl>
    implements _$$TumblrBlogImplCopyWith<$Res> {
  __$$TumblrBlogImplCopyWithImpl(
      _$TumblrBlogImpl _value, $Res Function(_$TumblrBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of TumblrBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? title = freezed,
    Object? url = freezed,
    Object? avatar = freezed,
    Object? description = freezed,
    Object? isBlockedFromPrimary = freezed,
    Object? followers = freezed,
    Object? followed = freezed,
    Object? primary = freezed,
  }) {
    return _then(_$TumblrBlogImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value._avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as List<AvatarImage>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isBlockedFromPrimary: freezed == isBlockedFromPrimary
          ? _value.isBlockedFromPrimary
          : isBlockedFromPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TumblrBlogImpl extends _TumblrBlog {
  const _$TumblrBlogImpl(
      {required this.uuid,
      required this.name,
      this.title,
      required this.url,
      final List<AvatarImage>? avatar,
      this.description,
      this.isBlockedFromPrimary = false,
      this.followers,
      this.followed,
      this.primary = false})
      : _avatar = avatar,
        super._();

  factory _$TumblrBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$TumblrBlogImplFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final String? title;
  @override
  final String? url;
  final List<AvatarImage>? _avatar;
  @override
  List<AvatarImage>? get avatar {
    final value = _avatar;
    if (value == null) return null;
    if (_avatar is EqualUnmodifiableListView) return _avatar;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey()
  final bool? isBlockedFromPrimary;
  @override
  final int? followers;
  @override
  final bool? followed;
  @override
  @JsonKey()
  final bool? primary;

  @override
  String toString() {
    return 'TumblrBlog(uuid: $uuid, name: $name, title: $title, url: $url, avatar: $avatar, description: $description, isBlockedFromPrimary: $isBlockedFromPrimary, followers: $followers, followed: $followed, primary: $primary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TumblrBlogImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._avatar, _avatar) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isBlockedFromPrimary, isBlockedFromPrimary) ||
                other.isBlockedFromPrimary == isBlockedFromPrimary) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.followed, followed) ||
                other.followed == followed) &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      name,
      title,
      url,
      const DeepCollectionEquality().hash(_avatar),
      description,
      isBlockedFromPrimary,
      followers,
      followed,
      primary);

  /// Create a copy of TumblrBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TumblrBlogImplCopyWith<_$TumblrBlogImpl> get copyWith =>
      __$$TumblrBlogImplCopyWithImpl<_$TumblrBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TumblrBlogImplToJson(
      this,
    );
  }
}

abstract class _TumblrBlog extends TumblrBlog {
  const factory _TumblrBlog(
      {required final String uuid,
      required final String name,
      final String? title,
      required final String? url,
      final List<AvatarImage>? avatar,
      final String? description,
      final bool? isBlockedFromPrimary,
      final int? followers,
      final bool? followed,
      final bool? primary}) = _$TumblrBlogImpl;
  const _TumblrBlog._() : super._();

  factory _TumblrBlog.fromJson(Map<String, dynamic> json) =
      _$TumblrBlogImpl.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  String? get title;
  @override
  String? get url;
  @override
  List<AvatarImage>? get avatar;
  @override
  String? get description;
  @override
  bool? get isBlockedFromPrimary;
  @override
  int? get followers;
  @override
  bool? get followed;
  @override
  bool? get primary;

  /// Create a copy of TumblrBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TumblrBlogImplCopyWith<_$TumblrBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
