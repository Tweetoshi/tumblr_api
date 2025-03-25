// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
// Common fields for all notification types
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  bool get unread =>
      throw _privateConstructorUsedError; // Fields that are present in specific notification types
  String? get targetPostId => throw _privateConstructorUsedError;
  String? get fromTumblelogName => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  List<String>? get postTags => throw _privateConstructorUsedError;
  String? get addedText => throw _privateConstructorUsedError;
  String? get replyText => throw _privateConstructorUsedError;

  /// Serializes this Notification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call(
      {String id,
      String type,
      int timestamp,
      bool unread,
      String? targetPostId,
      String? fromTumblelogName,
      String? postId,
      List<String>? postTags,
      String? addedText,
      String? replyText});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timestamp = null,
    Object? unread = null,
    Object? targetPostId = freezed,
    Object? fromTumblelogName = freezed,
    Object? postId = freezed,
    Object? postTags = freezed,
    Object? addedText = freezed,
    Object? replyText = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      unread: null == unread
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool,
      targetPostId: freezed == targetPostId
          ? _value.targetPostId
          : targetPostId // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTumblelogName: freezed == fromTumblelogName
          ? _value.fromTumblelogName
          : fromTumblelogName // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTags: freezed == postTags
          ? _value.postTags
          : postTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addedText: freezed == addedText
          ? _value.addedText
          : addedText // ignore: cast_nullable_to_non_nullable
              as String?,
      replyText: freezed == replyText
          ? _value.replyText
          : replyText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      int timestamp,
      bool unread,
      String? targetPostId,
      String? fromTumblelogName,
      String? postId,
      List<String>? postTags,
      String? addedText,
      String? replyText});
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? timestamp = null,
    Object? unread = null,
    Object? targetPostId = freezed,
    Object? fromTumblelogName = freezed,
    Object? postId = freezed,
    Object? postTags = freezed,
    Object? addedText = freezed,
    Object? replyText = freezed,
  }) {
    return _then(_$NotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      unread: null == unread
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as bool,
      targetPostId: freezed == targetPostId
          ? _value.targetPostId
          : targetPostId // ignore: cast_nullable_to_non_nullable
              as String?,
      fromTumblelogName: freezed == fromTumblelogName
          ? _value.fromTumblelogName
          : fromTumblelogName // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      postTags: freezed == postTags
          ? _value._postTags
          : postTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      addedText: freezed == addedText
          ? _value.addedText
          : addedText // ignore: cast_nullable_to_non_nullable
              as String?,
      replyText: freezed == replyText
          ? _value.replyText
          : replyText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationImpl extends _Notification {
  const _$NotificationImpl(
      {required this.id,
      required this.type,
      required this.timestamp,
      required this.unread,
      this.targetPostId,
      this.fromTumblelogName,
      this.postId,
      final List<String>? postTags,
      this.addedText,
      this.replyText})
      : _postTags = postTags,
        super._();

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

// Common fields for all notification types
  @override
  final String id;
  @override
  final String type;
  @override
  final int timestamp;
  @override
  final bool unread;
// Fields that are present in specific notification types
  @override
  final String? targetPostId;
  @override
  final String? fromTumblelogName;
  @override
  final String? postId;
  final List<String>? _postTags;
  @override
  List<String>? get postTags {
    final value = _postTags;
    if (value == null) return null;
    if (_postTags is EqualUnmodifiableListView) return _postTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? addedText;
  @override
  final String? replyText;

  @override
  String toString() {
    return 'Notification(id: $id, type: $type, timestamp: $timestamp, unread: $unread, targetPostId: $targetPostId, fromTumblelogName: $fromTumblelogName, postId: $postId, postTags: $postTags, addedText: $addedText, replyText: $replyText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.unread, unread) || other.unread == unread) &&
            (identical(other.targetPostId, targetPostId) ||
                other.targetPostId == targetPostId) &&
            (identical(other.fromTumblelogName, fromTumblelogName) ||
                other.fromTumblelogName == fromTumblelogName) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other._postTags, _postTags) &&
            (identical(other.addedText, addedText) ||
                other.addedText == addedText) &&
            (identical(other.replyText, replyText) ||
                other.replyText == replyText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      timestamp,
      unread,
      targetPostId,
      fromTumblelogName,
      postId,
      const DeepCollectionEquality().hash(_postTags),
      addedText,
      replyText);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(
      this,
    );
  }
}

abstract class _Notification extends Notification {
  const factory _Notification(
      {required final String id,
      required final String type,
      required final int timestamp,
      required final bool unread,
      final String? targetPostId,
      final String? fromTumblelogName,
      final String? postId,
      final List<String>? postTags,
      final String? addedText,
      final String? replyText}) = _$NotificationImpl;
  const _Notification._() : super._();

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

// Common fields for all notification types
  @override
  String get id;
  @override
  String get type;
  @override
  int get timestamp;
  @override
  bool get unread; // Fields that are present in specific notification types
  @override
  String? get targetPostId;
  @override
  String? get fromTumblelogName;
  @override
  String? get postId;
  @override
  List<String>? get postTags;
  @override
  String? get addedText;
  @override
  String? get replyText;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
