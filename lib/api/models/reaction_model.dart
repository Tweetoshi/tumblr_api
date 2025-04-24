import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_model.freezed.dart';
part 'reaction_model.g.dart';

@freezed
class EmojiData with _$EmojiData {
  const EmojiData._();

  const factory EmojiData({
    required String id,
    required String grapheme,
    required String baseGrapheme,
    required String baseSlug,
    @Default([]) List<String> variants,
  }) = _EmojiData;

  factory EmojiData.fromJson(Map<String, dynamic> json) =>
      _$EmojiDataFromJson(json);
}

@freezed
class Reaction with _$Reaction {
  const Reaction._();

  const factory Reaction({
    required EmojiData emoji,
    required int count,
    @Default([]) List<String> preview,
    @Default(false) bool reacted,
  }) = _Reaction;

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);
} 