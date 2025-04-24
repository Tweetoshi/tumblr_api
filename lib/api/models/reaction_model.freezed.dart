// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmojiData _$EmojiDataFromJson(Map<String, dynamic> json) {
  return _EmojiData.fromJson(json);
}

/// @nodoc
mixin _$EmojiData {
  String get id => throw _privateConstructorUsedError;
  String get grapheme => throw _privateConstructorUsedError;
  String get baseGrapheme => throw _privateConstructorUsedError;
  String get baseSlug => throw _privateConstructorUsedError;
  List<String> get variants => throw _privateConstructorUsedError;

  /// Serializes this EmojiData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmojiDataCopyWith<EmojiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiDataCopyWith<$Res> {
  factory $EmojiDataCopyWith(EmojiData value, $Res Function(EmojiData) then) =
      _$EmojiDataCopyWithImpl<$Res, EmojiData>;
  @useResult
  $Res call(
      {String id,
      String grapheme,
      String baseGrapheme,
      String baseSlug,
      List<String> variants});
}

/// @nodoc
class _$EmojiDataCopyWithImpl<$Res, $Val extends EmojiData>
    implements $EmojiDataCopyWith<$Res> {
  _$EmojiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grapheme = null,
    Object? baseGrapheme = null,
    Object? baseSlug = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      grapheme: null == grapheme
          ? _value.grapheme
          : grapheme // ignore: cast_nullable_to_non_nullable
              as String,
      baseGrapheme: null == baseGrapheme
          ? _value.baseGrapheme
          : baseGrapheme // ignore: cast_nullable_to_non_nullable
              as String,
      baseSlug: null == baseSlug
          ? _value.baseSlug
          : baseSlug // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmojiDataImplCopyWith<$Res>
    implements $EmojiDataCopyWith<$Res> {
  factory _$$EmojiDataImplCopyWith(
          _$EmojiDataImpl value, $Res Function(_$EmojiDataImpl) then) =
      __$$EmojiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String grapheme,
      String baseGrapheme,
      String baseSlug,
      List<String> variants});
}

/// @nodoc
class __$$EmojiDataImplCopyWithImpl<$Res>
    extends _$EmojiDataCopyWithImpl<$Res, _$EmojiDataImpl>
    implements _$$EmojiDataImplCopyWith<$Res> {
  __$$EmojiDataImplCopyWithImpl(
      _$EmojiDataImpl _value, $Res Function(_$EmojiDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? grapheme = null,
    Object? baseGrapheme = null,
    Object? baseSlug = null,
    Object? variants = null,
  }) {
    return _then(_$EmojiDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      grapheme: null == grapheme
          ? _value.grapheme
          : grapheme // ignore: cast_nullable_to_non_nullable
              as String,
      baseGrapheme: null == baseGrapheme
          ? _value.baseGrapheme
          : baseGrapheme // ignore: cast_nullable_to_non_nullable
              as String,
      baseSlug: null == baseSlug
          ? _value.baseSlug
          : baseSlug // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmojiDataImpl extends _EmojiData {
  const _$EmojiDataImpl(
      {required this.id,
      required this.grapheme,
      required this.baseGrapheme,
      required this.baseSlug,
      final List<String> variants = const []})
      : _variants = variants,
        super._();

  factory _$EmojiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmojiDataImplFromJson(json);

  @override
  final String id;
  @override
  final String grapheme;
  @override
  final String baseGrapheme;
  @override
  final String baseSlug;
  final List<String> _variants;
  @override
  @JsonKey()
  List<String> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'EmojiData(id: $id, grapheme: $grapheme, baseGrapheme: $baseGrapheme, baseSlug: $baseSlug, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmojiDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.grapheme, grapheme) ||
                other.grapheme == grapheme) &&
            (identical(other.baseGrapheme, baseGrapheme) ||
                other.baseGrapheme == baseGrapheme) &&
            (identical(other.baseSlug, baseSlug) ||
                other.baseSlug == baseSlug) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, grapheme, baseGrapheme,
      baseSlug, const DeepCollectionEquality().hash(_variants));

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmojiDataImplCopyWith<_$EmojiDataImpl> get copyWith =>
      __$$EmojiDataImplCopyWithImpl<_$EmojiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmojiDataImplToJson(
      this,
    );
  }
}

abstract class _EmojiData extends EmojiData {
  const factory _EmojiData(
      {required final String id,
      required final String grapheme,
      required final String baseGrapheme,
      required final String baseSlug,
      final List<String> variants}) = _$EmojiDataImpl;
  const _EmojiData._() : super._();

  factory _EmojiData.fromJson(Map<String, dynamic> json) =
      _$EmojiDataImpl.fromJson;

  @override
  String get id;
  @override
  String get grapheme;
  @override
  String get baseGrapheme;
  @override
  String get baseSlug;
  @override
  List<String> get variants;

  /// Create a copy of EmojiData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmojiDataImplCopyWith<_$EmojiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return _Reaction.fromJson(json);
}

/// @nodoc
mixin _$Reaction {
  EmojiData get emoji => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String> get preview => throw _privateConstructorUsedError;
  bool get reacted => throw _privateConstructorUsedError;

  /// Serializes this Reaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionCopyWith<Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCopyWith<$Res> {
  factory $ReactionCopyWith(Reaction value, $Res Function(Reaction) then) =
      _$ReactionCopyWithImpl<$Res, Reaction>;
  @useResult
  $Res call({EmojiData emoji, int count, List<String> preview, bool reacted});

  $EmojiDataCopyWith<$Res> get emoji;
}

/// @nodoc
class _$ReactionCopyWithImpl<$Res, $Val extends Reaction>
    implements $ReactionCopyWith<$Res> {
  _$ReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? count = null,
    Object? preview = null,
    Object? reacted = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as EmojiData,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      preview: null == preview
          ? _value.preview
          : preview // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reacted: null == reacted
          ? _value.reacted
          : reacted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmojiDataCopyWith<$Res> get emoji {
    return $EmojiDataCopyWith<$Res>(_value.emoji, (value) {
      return _then(_value.copyWith(emoji: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReactionImplCopyWith<$Res>
    implements $ReactionCopyWith<$Res> {
  factory _$$ReactionImplCopyWith(
          _$ReactionImpl value, $Res Function(_$ReactionImpl) then) =
      __$$ReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmojiData emoji, int count, List<String> preview, bool reacted});

  @override
  $EmojiDataCopyWith<$Res> get emoji;
}

/// @nodoc
class __$$ReactionImplCopyWithImpl<$Res>
    extends _$ReactionCopyWithImpl<$Res, _$ReactionImpl>
    implements _$$ReactionImplCopyWith<$Res> {
  __$$ReactionImplCopyWithImpl(
      _$ReactionImpl _value, $Res Function(_$ReactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? count = null,
    Object? preview = null,
    Object? reacted = null,
  }) {
    return _then(_$ReactionImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as EmojiData,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      preview: null == preview
          ? _value._preview
          : preview // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reacted: null == reacted
          ? _value.reacted
          : reacted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionImpl extends _Reaction {
  const _$ReactionImpl(
      {required this.emoji,
      required this.count,
      final List<String> preview = const [],
      this.reacted = false})
      : _preview = preview,
        super._();

  factory _$ReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionImplFromJson(json);

  @override
  final EmojiData emoji;
  @override
  final int count;
  final List<String> _preview;
  @override
  @JsonKey()
  List<String> get preview {
    if (_preview is EqualUnmodifiableListView) return _preview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preview);
  }

  @override
  @JsonKey()
  final bool reacted;

  @override
  String toString() {
    return 'Reaction(emoji: $emoji, count: $count, preview: $preview, reacted: $reacted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._preview, _preview) &&
            (identical(other.reacted, reacted) || other.reacted == reacted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, emoji, count,
      const DeepCollectionEquality().hash(_preview), reacted);

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionImplCopyWith<_$ReactionImpl> get copyWith =>
      __$$ReactionImplCopyWithImpl<_$ReactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionImplToJson(
      this,
    );
  }
}

abstract class _Reaction extends Reaction {
  const factory _Reaction(
      {required final EmojiData emoji,
      required final int count,
      final List<String> preview,
      final bool reacted}) = _$ReactionImpl;
  const _Reaction._() : super._();

  factory _Reaction.fromJson(Map<String, dynamic> json) =
      _$ReactionImpl.fromJson;

  @override
  EmojiData get emoji;
  @override
  int get count;
  @override
  List<String> get preview;
  @override
  bool get reacted;

  /// Create a copy of Reaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionImplCopyWith<_$ReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
