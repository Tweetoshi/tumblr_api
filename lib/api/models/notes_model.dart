import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_model.freezed.dart';
part 'notes_model.g.dart';

// Enum representing the different modes for retrieving notes
enum NoteMode {
  /// Loads all notes for the post
  all,

  /// Loads only likes for the post
  likes,

  /// Loads only replies and reblogs with added text commentary,
  /// with the rest of the notes (likes, reblogs without commentary)
  /// in a rollup_notes field
  conversation,

  /// Loads only like and reblog notes for the post in the notes array
  rollup,

  /// Loads only the reblog notes for the post, and each note object
  /// includes a tags array field (which may be empty)
  // ignore: constant_identifier_names
  reblogs_with_tags,
}

@freezed
class NotesResponse with _$NotesResponse {
  const factory NotesResponse({
    required List<Note> notes,
    int? totalNotes,
    int? totalLikes,
    int? totalReblogs,
    int? startedFrom,
    int? rollupNotes,
  }) = _NotesResponse;

  factory NotesResponse.fromJson(Map<String, dynamic> json) {
    final notesList = (json['notes'] as List<dynamic>?)
            ?.map((noteJson) => Note.fromJson(noteJson as Map<String, dynamic>))
            .toList() ??
        [];

    return NotesResponse(
      notes: notesList,
      totalNotes: json['total_notes'] as int?,
      totalLikes: json['total_likes'] as int?,
      totalReblogs: json['total_reblogs'] as int?,
      rollupNotes: json['rollup_notes'] as int?,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Note {
  final int timestamp;

  @JsonKey(name: 'blog_name')
  final String blogName;

  @JsonKey(name: 'blog_uuid')
  final String blogUuid;

  @JsonKey(name: 'blog_url')
  final String blogUrl;

  final String type;

  @JsonKey(name: 'post_id')
  final String? postId;

  @JsonKey(name: 'reblog_key')
  final String? reblogKey;

  @JsonKey(name: 'post_url')
  final String? postUrl;

  @JsonKey(name: 'avatar_shape')
  final String? avatarShape;

  @JsonKey(name: 'avatar_url')
  final Map<String, dynamic>? avatarUrl;

  @JsonKey(name: 'formatted_reply_text')
  final String? formattedReplyText;

  @JsonKey(name: 'reply_text')
  final String? reply;

  @JsonKey(name: 'reblog_parent_blog_name')
  final String? reblogParentBlogName;

  Note({
    required this.timestamp,
    required this.blogName,
    required this.blogUuid,
    required this.blogUrl,
    required this.type,
    this.postId,
    this.reblogKey,
    this.postUrl,
    this.avatarShape,
    this.avatarUrl,
    this.formattedReplyText,
    this.reply,
    this.reblogParentBlogName,
  });

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
