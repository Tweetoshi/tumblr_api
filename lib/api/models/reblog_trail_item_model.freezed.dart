// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reblog_trail_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReblogTrailItem _$ReblogTrailItemFromJson(Map<String, dynamic> json) {
  return _ReblogTrailItem.fromJson(json);
}

/// @nodoc
mixin _$ReblogTrailItem {
  PostDetails? get post => throw _privateConstructorUsedError;
  TumblrBlog? get blog => throw _privateConstructorUsedError;
  List<ContentBlock> get content => throw _privateConstructorUsedError;
  List<LayoutBlock>? get layout => throw _privateConstructorUsedError;
  String? get brokenBlogName => throw _privateConstructorUsedError;

  /// Serializes this ReblogTrailItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReblogTrailItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReblogTrailItemCopyWith<ReblogTrailItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReblogTrailItemCopyWith<$Res> {
  factory $ReblogTrailItemCopyWith(
          ReblogTrailItem value, $Res Function(ReblogTrailItem) then) =
      _$ReblogTrailItemCopyWithImpl<$Res, ReblogTrailItem>;
  @useResult
  $Res call(
      {PostDetails? post,
      TumblrBlog? blog,
      List<ContentBlock> content,
      List<LayoutBlock>? layout,
      String? brokenBlogName});

  $PostDetailsCopyWith<$Res>? get post;
  $TumblrBlogCopyWith<$Res>? get blog;
}

/// @nodoc
class _$ReblogTrailItemCopyWithImpl<$Res, $Val extends ReblogTrailItem>
    implements $ReblogTrailItemCopyWith<$Res> {
  _$ReblogTrailItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReblogTrailItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
    Object? blog = freezed,
    Object? content = null,
    Object? layout = freezed,
    Object? brokenBlogName = freezed,
  }) {
    return _then(_value.copyWith(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDetails?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutBlock>?,
      brokenBlogName: freezed == brokenBlogName
          ? _value.brokenBlogName
          : brokenBlogName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ReblogTrailItem
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

  /// Create a copy of ReblogTrailItem
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
}

/// @nodoc
abstract class _$$ReblogTrailItemImplCopyWith<$Res>
    implements $ReblogTrailItemCopyWith<$Res> {
  factory _$$ReblogTrailItemImplCopyWith(_$ReblogTrailItemImpl value,
          $Res Function(_$ReblogTrailItemImpl) then) =
      __$$ReblogTrailItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostDetails? post,
      TumblrBlog? blog,
      List<ContentBlock> content,
      List<LayoutBlock>? layout,
      String? brokenBlogName});

  @override
  $PostDetailsCopyWith<$Res>? get post;
  @override
  $TumblrBlogCopyWith<$Res>? get blog;
}

/// @nodoc
class __$$ReblogTrailItemImplCopyWithImpl<$Res>
    extends _$ReblogTrailItemCopyWithImpl<$Res, _$ReblogTrailItemImpl>
    implements _$$ReblogTrailItemImplCopyWith<$Res> {
  __$$ReblogTrailItemImplCopyWithImpl(
      _$ReblogTrailItemImpl _value, $Res Function(_$ReblogTrailItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReblogTrailItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = freezed,
    Object? blog = freezed,
    Object? content = null,
    Object? layout = freezed,
    Object? brokenBlogName = freezed,
  }) {
    return _then(_$ReblogTrailItemImpl(
      post: freezed == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as PostDetails?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      layout: freezed == layout
          ? _value._layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutBlock>?,
      brokenBlogName: freezed == brokenBlogName
          ? _value.brokenBlogName
          : brokenBlogName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReblogTrailItemImpl implements _ReblogTrailItem {
  const _$ReblogTrailItemImpl(
      {this.post,
      this.blog,
      required final List<ContentBlock> content,
      final List<LayoutBlock>? layout,
      this.brokenBlogName})
      : _content = content,
        _layout = layout;

  factory _$ReblogTrailItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReblogTrailItemImplFromJson(json);

  @override
  final PostDetails? post;
  @override
  final TumblrBlog? blog;
  final List<ContentBlock> _content;
  @override
  List<ContentBlock> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  final List<LayoutBlock>? _layout;
  @override
  List<LayoutBlock>? get layout {
    final value = _layout;
    if (value == null) return null;
    if (_layout is EqualUnmodifiableListView) return _layout;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? brokenBlogName;

  @override
  String toString() {
    return 'ReblogTrailItem(post: $post, blog: $blog, content: $content, layout: $layout, brokenBlogName: $brokenBlogName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReblogTrailItemImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._layout, _layout) &&
            (identical(other.brokenBlogName, brokenBlogName) ||
                other.brokenBlogName == brokenBlogName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      post,
      blog,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_layout),
      brokenBlogName);

  /// Create a copy of ReblogTrailItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReblogTrailItemImplCopyWith<_$ReblogTrailItemImpl> get copyWith =>
      __$$ReblogTrailItemImplCopyWithImpl<_$ReblogTrailItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReblogTrailItemImplToJson(
      this,
    );
  }
}

abstract class _ReblogTrailItem implements ReblogTrailItem {
  const factory _ReblogTrailItem(
      {final PostDetails? post,
      final TumblrBlog? blog,
      required final List<ContentBlock> content,
      final List<LayoutBlock>? layout,
      final String? brokenBlogName}) = _$ReblogTrailItemImpl;

  factory _ReblogTrailItem.fromJson(Map<String, dynamic> json) =
      _$ReblogTrailItemImpl.fromJson;

  @override
  PostDetails? get post;
  @override
  TumblrBlog? get blog;
  @override
  List<ContentBlock> get content;
  @override
  List<LayoutBlock>? get layout;
  @override
  String? get brokenBlogName;

  /// Create a copy of ReblogTrailItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReblogTrailItemImplCopyWith<_$ReblogTrailItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
