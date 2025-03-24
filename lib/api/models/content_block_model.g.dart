// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_block_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextFormattingImpl _$$TextFormattingImplFromJson(Map<String, dynamic> json) =>
    _$TextFormattingImpl(
      start: (json['start'] as num).toInt(),
      end: (json['end'] as num).toInt(),
      type: json['type'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$TextFormattingImplToJson(
        _$TextFormattingImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'type': instance.type,
      'url': instance.url,
    };

_$RowsLayoutBlockImpl _$$RowsLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$RowsLayoutBlockImpl(
      display: (json['display'] as List<dynamic>)
          .map((e) => DisplayObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      truncateAfter: (json['truncateAfter'] as num?)?.toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RowsLayoutBlockImplToJson(
        _$RowsLayoutBlockImpl instance) =>
    <String, dynamic>{
      'display': instance.display,
      'truncateAfter': instance.truncateAfter,
      'type': instance.$type,
    };

_$CondensedLayoutBlockImpl _$$CondensedLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$CondensedLayoutBlockImpl(
      truncateAfter: (json['truncateAfter'] as num?)?.toInt(),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$CondensedLayoutBlockImplToJson(
        _$CondensedLayoutBlockImpl instance) =>
    <String, dynamic>{
      'truncateAfter': instance.truncateAfter,
      'blocks': instance.blocks,
      'type': instance.$type,
    };

_$AskLayoutBlockImpl _$$AskLayoutBlockImplFromJson(Map<String, dynamic> json) =>
    _$AskLayoutBlockImpl(
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      attribution: json['attribution'] == null
          ? null
          : AttributionObject.fromJson(
              json['attribution'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$AskLayoutBlockImplToJson(
        _$AskLayoutBlockImpl instance) =>
    <String, dynamic>{
      'blocks': instance.blocks,
      'attribution': instance.attribution,
      'type': instance.$type,
    };

_$GenericLayoutBlockImpl _$$GenericLayoutBlockImplFromJson(
        Map<String, dynamic> json) =>
    _$GenericLayoutBlockImpl(
      type: json['type'] as String,
      originalJson: json['originalJson'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GenericLayoutBlockImplToJson(
        _$GenericLayoutBlockImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'originalJson': instance.originalJson,
    };

_$DisplayObjectImpl _$$DisplayObjectImplFromJson(Map<String, dynamic> json) =>
    _$DisplayObjectImpl(
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      mode: json['mode'] == null
          ? null
          : DisplayMode.fromJson(json['mode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisplayObjectImplToJson(_$DisplayObjectImpl instance) =>
    <String, dynamic>{
      'blocks': instance.blocks,
      'mode': instance.mode,
    };

_$DisplayModeImpl _$$DisplayModeImplFromJson(Map<String, dynamic> json) =>
    _$DisplayModeImpl(
      type: json['type'] as String,
    );

Map<String, dynamic> _$$DisplayModeImplToJson(_$DisplayModeImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
