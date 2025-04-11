// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tumblr_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TumblrPost _$TumblrPostFromJson(Map<String, dynamic> json) {
  return _TumblrPost.fromJson(json);
}

/// @nodoc
mixin _$TumblrPost {
  @StringFromIntConverter()
  String get id => throw _privateConstructorUsedError;
  TumblrBlog get blog => throw _privateConstructorUsedError;
  TumblrBlog? get authorBlog => throw _privateConstructorUsedError;
  List<ContentBlock> get content => throw _privateConstructorUsedError;
  List<LayoutBlock>? get layout => throw _privateConstructorUsedError;
  List<ReblogTrailItem>? get trail => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  String get postUrl => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get reblogKey => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  bool? get isPaywalled => throw _privateConstructorUsedError;
  String? get paywallAccess => throw _privateConstructorUsedError;
  bool get liked => throw _privateConstructorUsedError;
  bool get followed => throw _privateConstructorUsedError;
  int? get noteCount => throw _privateConstructorUsedError;
  Map<String, dynamic>? get paywallReblogView =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get subscriptionPlan =>
      throw _privateConstructorUsedError;

  /// Serializes this TumblrPost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TumblrPostCopyWith<TumblrPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TumblrPostCopyWith<$Res> {
  factory $TumblrPostCopyWith(
          TumblrPost value, $Res Function(TumblrPost) then) =
      _$TumblrPostCopyWithImpl<$Res, TumblrPost>;
  @useResult
  $Res call(
      {@StringFromIntConverter() String id,
      TumblrBlog blog,
      TumblrBlog? authorBlog,
      List<ContentBlock> content,
      List<LayoutBlock>? layout,
      List<ReblogTrailItem>? trail,
      int timestamp,
      String postUrl,
      List<String>? tags,
      String? reblogKey,
      String? summary,
      bool? isPaywalled,
      String? paywallAccess,
      bool liked,
      bool followed,
      int? noteCount,
      Map<String, dynamic>? paywallReblogView,
      Map<String, dynamic>? subscriptionPlan});

  $TumblrBlogCopyWith<$Res> get blog;
  $TumblrBlogCopyWith<$Res>? get authorBlog;
}

/// @nodoc
class _$TumblrPostCopyWithImpl<$Res, $Val extends TumblrPost>
    implements $TumblrPostCopyWith<$Res> {
  _$TumblrPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blog = null,
    Object? authorBlog = freezed,
    Object? content = null,
    Object? layout = freezed,
    Object? trail = freezed,
    Object? timestamp = null,
    Object? postUrl = null,
    Object? tags = freezed,
    Object? reblogKey = freezed,
    Object? summary = freezed,
    Object? isPaywalled = freezed,
    Object? paywallAccess = freezed,
    Object? liked = null,
    Object? followed = null,
    Object? noteCount = freezed,
    Object? paywallReblogView = freezed,
    Object? subscriptionPlan = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog,
      authorBlog: freezed == authorBlog
          ? _value.authorBlog
          : authorBlog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutBlock>?,
      trail: freezed == trail
          ? _value.trail
          : trail // ignore: cast_nullable_to_non_nullable
              as List<ReblogTrailItem>?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      postUrl: null == postUrl
          ? _value.postUrl
          : postUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reblogKey: freezed == reblogKey
          ? _value.reblogKey
          : reblogKey // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaywalled: freezed == isPaywalled
          ? _value.isPaywalled
          : isPaywalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paywallAccess: freezed == paywallAccess
          ? _value.paywallAccess
          : paywallAccess // ignore: cast_nullable_to_non_nullable
              as String?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
      noteCount: freezed == noteCount
          ? _value.noteCount
          : noteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      paywallReblogView: freezed == paywallReblogView
          ? _value.paywallReblogView
          : paywallReblogView // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value.subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TumblrBlogCopyWith<$Res> get blog {
    return $TumblrBlogCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TumblrBlogCopyWith<$Res>? get authorBlog {
    if (_value.authorBlog == null) {
      return null;
    }

    return $TumblrBlogCopyWith<$Res>(_value.authorBlog!, (value) {
      return _then(_value.copyWith(authorBlog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TumblrPostImplCopyWith<$Res>
    implements $TumblrPostCopyWith<$Res> {
  factory _$$TumblrPostImplCopyWith(
          _$TumblrPostImpl value, $Res Function(_$TumblrPostImpl) then) =
      __$$TumblrPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringFromIntConverter() String id,
      TumblrBlog blog,
      TumblrBlog? authorBlog,
      List<ContentBlock> content,
      List<LayoutBlock>? layout,
      List<ReblogTrailItem>? trail,
      int timestamp,
      String postUrl,
      List<String>? tags,
      String? reblogKey,
      String? summary,
      bool? isPaywalled,
      String? paywallAccess,
      bool liked,
      bool followed,
      int? noteCount,
      Map<String, dynamic>? paywallReblogView,
      Map<String, dynamic>? subscriptionPlan});

  @override
  $TumblrBlogCopyWith<$Res> get blog;
  @override
  $TumblrBlogCopyWith<$Res>? get authorBlog;
}

/// @nodoc
class __$$TumblrPostImplCopyWithImpl<$Res>
    extends _$TumblrPostCopyWithImpl<$Res, _$TumblrPostImpl>
    implements _$$TumblrPostImplCopyWith<$Res> {
  __$$TumblrPostImplCopyWithImpl(
      _$TumblrPostImpl _value, $Res Function(_$TumblrPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blog = null,
    Object? authorBlog = freezed,
    Object? content = null,
    Object? layout = freezed,
    Object? trail = freezed,
    Object? timestamp = null,
    Object? postUrl = null,
    Object? tags = freezed,
    Object? reblogKey = freezed,
    Object? summary = freezed,
    Object? isPaywalled = freezed,
    Object? paywallAccess = freezed,
    Object? liked = null,
    Object? followed = null,
    Object? noteCount = freezed,
    Object? paywallReblogView = freezed,
    Object? subscriptionPlan = freezed,
  }) {
    return _then(_$TumblrPostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog,
      authorBlog: freezed == authorBlog
          ? _value.authorBlog
          : authorBlog // ignore: cast_nullable_to_non_nullable
              as TumblrBlog?,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      layout: freezed == layout
          ? _value._layout
          : layout // ignore: cast_nullable_to_non_nullable
              as List<LayoutBlock>?,
      trail: freezed == trail
          ? _value._trail
          : trail // ignore: cast_nullable_to_non_nullable
              as List<ReblogTrailItem>?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      postUrl: null == postUrl
          ? _value.postUrl
          : postUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reblogKey: freezed == reblogKey
          ? _value.reblogKey
          : reblogKey // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaywalled: freezed == isPaywalled
          ? _value.isPaywalled
          : isPaywalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paywallAccess: freezed == paywallAccess
          ? _value.paywallAccess
          : paywallAccess // ignore: cast_nullable_to_non_nullable
              as String?,
      liked: null == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool,
      followed: null == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as bool,
      noteCount: freezed == noteCount
          ? _value.noteCount
          : noteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      paywallReblogView: freezed == paywallReblogView
          ? _value._paywallReblogView
          : paywallReblogView // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      subscriptionPlan: freezed == subscriptionPlan
          ? _value._subscriptionPlan
          : subscriptionPlan // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TumblrPostImpl extends _TumblrPost {
  const _$TumblrPostImpl(
      {@StringFromIntConverter() required this.id,
      required this.blog,
      this.authorBlog,
      required final List<ContentBlock> content,
      final List<LayoutBlock>? layout,
      final List<ReblogTrailItem>? trail,
      required this.timestamp,
      required this.postUrl,
      final List<String>? tags,
      this.reblogKey,
      this.summary,
      this.isPaywalled,
      this.paywallAccess,
      this.liked = false,
      this.followed = false,
      this.noteCount,
      final Map<String, dynamic>? paywallReblogView,
      final Map<String, dynamic>? subscriptionPlan})
      : _content = content,
        _layout = layout,
        _trail = trail,
        _tags = tags,
        _paywallReblogView = paywallReblogView,
        _subscriptionPlan = subscriptionPlan,
        super._();

  factory _$TumblrPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$TumblrPostImplFromJson(json);

  @override
  @StringFromIntConverter()
  final String id;
  @override
  final TumblrBlog blog;
  @override
  final TumblrBlog? authorBlog;
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

  final List<ReblogTrailItem>? _trail;
  @override
  List<ReblogTrailItem>? get trail {
    final value = _trail;
    if (value == null) return null;
    if (_trail is EqualUnmodifiableListView) return _trail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int timestamp;
  @override
  final String postUrl;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? reblogKey;
  @override
  final String? summary;
  @override
  final bool? isPaywalled;
  @override
  final String? paywallAccess;
  @override
  @JsonKey()
  final bool liked;
  @override
  @JsonKey()
  final bool followed;
  @override
  final int? noteCount;
  final Map<String, dynamic>? _paywallReblogView;
  @override
  Map<String, dynamic>? get paywallReblogView {
    final value = _paywallReblogView;
    if (value == null) return null;
    if (_paywallReblogView is EqualUnmodifiableMapView)
      return _paywallReblogView;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _subscriptionPlan;
  @override
  Map<String, dynamic>? get subscriptionPlan {
    final value = _subscriptionPlan;
    if (value == null) return null;
    if (_subscriptionPlan is EqualUnmodifiableMapView) return _subscriptionPlan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TumblrPost(id: $id, blog: $blog, authorBlog: $authorBlog, content: $content, layout: $layout, trail: $trail, timestamp: $timestamp, postUrl: $postUrl, tags: $tags, reblogKey: $reblogKey, summary: $summary, isPaywalled: $isPaywalled, paywallAccess: $paywallAccess, liked: $liked, followed: $followed, noteCount: $noteCount, paywallReblogView: $paywallReblogView, subscriptionPlan: $subscriptionPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TumblrPostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.authorBlog, authorBlog) ||
                other.authorBlog == authorBlog) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other._layout, _layout) &&
            const DeepCollectionEquality().equals(other._trail, _trail) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.postUrl, postUrl) || other.postUrl == postUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.reblogKey, reblogKey) ||
                other.reblogKey == reblogKey) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.isPaywalled, isPaywalled) ||
                other.isPaywalled == isPaywalled) &&
            (identical(other.paywallAccess, paywallAccess) ||
                other.paywallAccess == paywallAccess) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.followed, followed) ||
                other.followed == followed) &&
            (identical(other.noteCount, noteCount) ||
                other.noteCount == noteCount) &&
            const DeepCollectionEquality()
                .equals(other._paywallReblogView, _paywallReblogView) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionPlan, _subscriptionPlan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      blog,
      authorBlog,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(_layout),
      const DeepCollectionEquality().hash(_trail),
      timestamp,
      postUrl,
      const DeepCollectionEquality().hash(_tags),
      reblogKey,
      summary,
      isPaywalled,
      paywallAccess,
      liked,
      followed,
      noteCount,
      const DeepCollectionEquality().hash(_paywallReblogView),
      const DeepCollectionEquality().hash(_subscriptionPlan));

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TumblrPostImplCopyWith<_$TumblrPostImpl> get copyWith =>
      __$$TumblrPostImplCopyWithImpl<_$TumblrPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TumblrPostImplToJson(
      this,
    );
  }
}

abstract class _TumblrPost extends TumblrPost {
  const factory _TumblrPost(
      {@StringFromIntConverter() required final String id,
      required final TumblrBlog blog,
      final TumblrBlog? authorBlog,
      required final List<ContentBlock> content,
      final List<LayoutBlock>? layout,
      final List<ReblogTrailItem>? trail,
      required final int timestamp,
      required final String postUrl,
      final List<String>? tags,
      final String? reblogKey,
      final String? summary,
      final bool? isPaywalled,
      final String? paywallAccess,
      final bool liked,
      final bool followed,
      final int? noteCount,
      final Map<String, dynamic>? paywallReblogView,
      final Map<String, dynamic>? subscriptionPlan}) = _$TumblrPostImpl;
  const _TumblrPost._() : super._();

  factory _TumblrPost.fromJson(Map<String, dynamic> json) =
      _$TumblrPostImpl.fromJson;

  @override
  @StringFromIntConverter()
  String get id;
  @override
  TumblrBlog get blog;
  @override
  TumblrBlog? get authorBlog;
  @override
  List<ContentBlock> get content;
  @override
  List<LayoutBlock>? get layout;
  @override
  List<ReblogTrailItem>? get trail;
  @override
  int get timestamp;
  @override
  String get postUrl;
  @override
  List<String>? get tags;
  @override
  String? get reblogKey;
  @override
  String? get summary;
  @override
  bool? get isPaywalled;
  @override
  String? get paywallAccess;
  @override
  bool get liked;
  @override
  bool get followed;
  @override
  int? get noteCount;
  @override
  Map<String, dynamic>? get paywallReblogView;
  @override
  Map<String, dynamic>? get subscriptionPlan;

  /// Create a copy of TumblrPost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TumblrPostImplCopyWith<_$TumblrPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostDetails _$PostDetailsFromJson(Map<String, dynamic> json) {
  return _PostDetails.fromJson(json);
}

/// @nodoc
mixin _$PostDetails {
  String? get id => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  bool? get isCommercial => throw _privateConstructorUsedError;
  bool? get isPaywalled => throw _privateConstructorUsedError;
  String? get paywallAccess => throw _privateConstructorUsedError;

  /// Serializes this PostDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostDetailsCopyWith<PostDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailsCopyWith<$Res> {
  factory $PostDetailsCopyWith(
          PostDetails value, $Res Function(PostDetails) then) =
      _$PostDetailsCopyWithImpl<$Res, PostDetails>;
  @useResult
  $Res call(
      {String? id,
      int? timestamp,
      bool? isCommercial,
      bool? isPaywalled,
      String? paywallAccess});
}

/// @nodoc
class _$PostDetailsCopyWithImpl<$Res, $Val extends PostDetails>
    implements $PostDetailsCopyWith<$Res> {
  _$PostDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? isCommercial = freezed,
    Object? isPaywalled = freezed,
    Object? paywallAccess = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaywalled: freezed == isPaywalled
          ? _value.isPaywalled
          : isPaywalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paywallAccess: freezed == paywallAccess
          ? _value.paywallAccess
          : paywallAccess // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostDetailsImplCopyWith<$Res>
    implements $PostDetailsCopyWith<$Res> {
  factory _$$PostDetailsImplCopyWith(
          _$PostDetailsImpl value, $Res Function(_$PostDetailsImpl) then) =
      __$$PostDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? timestamp,
      bool? isCommercial,
      bool? isPaywalled,
      String? paywallAccess});
}

/// @nodoc
class __$$PostDetailsImplCopyWithImpl<$Res>
    extends _$PostDetailsCopyWithImpl<$Res, _$PostDetailsImpl>
    implements _$$PostDetailsImplCopyWith<$Res> {
  __$$PostDetailsImplCopyWithImpl(
      _$PostDetailsImpl _value, $Res Function(_$PostDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timestamp = freezed,
    Object? isCommercial = freezed,
    Object? isPaywalled = freezed,
    Object? paywallAccess = freezed,
  }) {
    return _then(_$PostDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isCommercial: freezed == isCommercial
          ? _value.isCommercial
          : isCommercial // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaywalled: freezed == isPaywalled
          ? _value.isPaywalled
          : isPaywalled // ignore: cast_nullable_to_non_nullable
              as bool?,
      paywallAccess: freezed == paywallAccess
          ? _value.paywallAccess
          : paywallAccess // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDetailsImpl extends _PostDetails {
  const _$PostDetailsImpl(
      {this.id,
      this.timestamp,
      this.isCommercial,
      this.isPaywalled,
      this.paywallAccess})
      : super._();

  factory _$PostDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDetailsImplFromJson(json);

  @override
  final String? id;
  @override
  final int? timestamp;
  @override
  final bool? isCommercial;
  @override
  final bool? isPaywalled;
  @override
  final String? paywallAccess;

  @override
  String toString() {
    return 'PostDetails(id: $id, timestamp: $timestamp, isCommercial: $isCommercial, isPaywalled: $isPaywalled, paywallAccess: $paywallAccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.isCommercial, isCommercial) ||
                other.isCommercial == isCommercial) &&
            (identical(other.isPaywalled, isPaywalled) ||
                other.isPaywalled == isPaywalled) &&
            (identical(other.paywallAccess, paywallAccess) ||
                other.paywallAccess == paywallAccess));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, timestamp, isCommercial, isPaywalled, paywallAccess);

  /// Create a copy of PostDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailsImplCopyWith<_$PostDetailsImpl> get copyWith =>
      __$$PostDetailsImplCopyWithImpl<_$PostDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDetailsImplToJson(
      this,
    );
  }
}

abstract class _PostDetails extends PostDetails {
  const factory _PostDetails(
      {final String? id,
      final int? timestamp,
      final bool? isCommercial,
      final bool? isPaywalled,
      final String? paywallAccess}) = _$PostDetailsImpl;
  const _PostDetails._() : super._();

  factory _PostDetails.fromJson(Map<String, dynamic> json) =
      _$PostDetailsImpl.fromJson;

  @override
  String? get id;
  @override
  int? get timestamp;
  @override
  bool? get isCommercial;
  @override
  bool? get isPaywalled;
  @override
  String? get paywallAccess;

  /// Create a copy of PostDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDetailsImplCopyWith<_$PostDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
