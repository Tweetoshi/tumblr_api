// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesResponse {
  List<Note> get notes => throw _privateConstructorUsedError;
  int? get totalNotes => throw _privateConstructorUsedError;
  int? get totalLikes => throw _privateConstructorUsedError;
  int? get totalReblogs => throw _privateConstructorUsedError;
  int? get startedFrom => throw _privateConstructorUsedError;
  int? get rollupNotes => throw _privateConstructorUsedError;

  /// Create a copy of NotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotesResponseCopyWith<NotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesResponseCopyWith<$Res> {
  factory $NotesResponseCopyWith(
          NotesResponse value, $Res Function(NotesResponse) then) =
      _$NotesResponseCopyWithImpl<$Res, NotesResponse>;
  @useResult
  $Res call(
      {List<Note> notes,
      int? totalNotes,
      int? totalLikes,
      int? totalReblogs,
      int? startedFrom,
      int? rollupNotes});
}

/// @nodoc
class _$NotesResponseCopyWithImpl<$Res, $Val extends NotesResponse>
    implements $NotesResponseCopyWith<$Res> {
  _$NotesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? totalNotes = freezed,
    Object? totalLikes = freezed,
    Object? totalReblogs = freezed,
    Object? startedFrom = freezed,
    Object? rollupNotes = freezed,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      totalNotes: freezed == totalNotes
          ? _value.totalNotes
          : totalNotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReblogs: freezed == totalReblogs
          ? _value.totalReblogs
          : totalReblogs // ignore: cast_nullable_to_non_nullable
              as int?,
      startedFrom: freezed == startedFrom
          ? _value.startedFrom
          : startedFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      rollupNotes: freezed == rollupNotes
          ? _value.rollupNotes
          : rollupNotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesResponseImplCopyWith<$Res>
    implements $NotesResponseCopyWith<$Res> {
  factory _$$NotesResponseImplCopyWith(
          _$NotesResponseImpl value, $Res Function(_$NotesResponseImpl) then) =
      __$$NotesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Note> notes,
      int? totalNotes,
      int? totalLikes,
      int? totalReblogs,
      int? startedFrom,
      int? rollupNotes});
}

/// @nodoc
class __$$NotesResponseImplCopyWithImpl<$Res>
    extends _$NotesResponseCopyWithImpl<$Res, _$NotesResponseImpl>
    implements _$$NotesResponseImplCopyWith<$Res> {
  __$$NotesResponseImplCopyWithImpl(
      _$NotesResponseImpl _value, $Res Function(_$NotesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? totalNotes = freezed,
    Object? totalLikes = freezed,
    Object? totalReblogs = freezed,
    Object? startedFrom = freezed,
    Object? rollupNotes = freezed,
  }) {
    return _then(_$NotesResponseImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      totalNotes: freezed == totalNotes
          ? _value.totalNotes
          : totalNotes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReblogs: freezed == totalReblogs
          ? _value.totalReblogs
          : totalReblogs // ignore: cast_nullable_to_non_nullable
              as int?,
      startedFrom: freezed == startedFrom
          ? _value.startedFrom
          : startedFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      rollupNotes: freezed == rollupNotes
          ? _value.rollupNotes
          : rollupNotes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NotesResponseImpl implements _NotesResponse {
  const _$NotesResponseImpl(
      {required final List<Note> notes,
      this.totalNotes,
      this.totalLikes,
      this.totalReblogs,
      this.startedFrom,
      this.rollupNotes})
      : _notes = notes;

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final int? totalNotes;
  @override
  final int? totalLikes;
  @override
  final int? totalReblogs;
  @override
  final int? startedFrom;
  @override
  final int? rollupNotes;

  @override
  String toString() {
    return 'NotesResponse(notes: $notes, totalNotes: $totalNotes, totalLikes: $totalLikes, totalReblogs: $totalReblogs, startedFrom: $startedFrom, rollupNotes: $rollupNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesResponseImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.totalNotes, totalNotes) ||
                other.totalNotes == totalNotes) &&
            (identical(other.totalLikes, totalLikes) ||
                other.totalLikes == totalLikes) &&
            (identical(other.totalReblogs, totalReblogs) ||
                other.totalReblogs == totalReblogs) &&
            (identical(other.startedFrom, startedFrom) ||
                other.startedFrom == startedFrom) &&
            (identical(other.rollupNotes, rollupNotes) ||
                other.rollupNotes == rollupNotes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      totalNotes,
      totalLikes,
      totalReblogs,
      startedFrom,
      rollupNotes);

  /// Create a copy of NotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesResponseImplCopyWith<_$NotesResponseImpl> get copyWith =>
      __$$NotesResponseImplCopyWithImpl<_$NotesResponseImpl>(this, _$identity);
}

abstract class _NotesResponse implements NotesResponse {
  const factory _NotesResponse(
      {required final List<Note> notes,
      final int? totalNotes,
      final int? totalLikes,
      final int? totalReblogs,
      final int? startedFrom,
      final int? rollupNotes}) = _$NotesResponseImpl;

  @override
  List<Note> get notes;
  @override
  int? get totalNotes;
  @override
  int? get totalLikes;
  @override
  int? get totalReblogs;
  @override
  int? get startedFrom;
  @override
  int? get rollupNotes;

  /// Create a copy of NotesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesResponseImplCopyWith<_$NotesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
