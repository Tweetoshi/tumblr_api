// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmojiDataImpl _$$EmojiDataImplFromJson(Map<String, dynamic> json) =>
    _$EmojiDataImpl(
      id: json['id'] as String,
      grapheme: json['grapheme'] as String,
      baseGrapheme: json['base_grapheme'] as String,
      baseSlug: json['base_slug'] as String,
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EmojiDataImplToJson(_$EmojiDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'grapheme': instance.grapheme,
      'base_grapheme': instance.baseGrapheme,
      'base_slug': instance.baseSlug,
      'variants': instance.variants,
    };

_$ReactionImpl _$$ReactionImplFromJson(Map<String, dynamic> json) =>
    _$ReactionImpl(
      emoji: EmojiData.fromJson(json['emoji'] as Map<String, dynamic>),
      count: (json['count'] as num).toInt(),
      preview: (json['preview'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      reacted: json['reacted'] as bool? ?? false,
    );

Map<String, dynamic> _$$ReactionImplToJson(_$ReactionImpl instance) =>
    <String, dynamic>{
      'emoji': instance.emoji,
      'count': instance.count,
      'preview': instance.preview,
      'reacted': instance.reacted,
    };
