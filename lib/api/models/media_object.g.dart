// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaObjectImpl _$$MediaObjectImplFromJson(Map<String, dynamic> json) =>
    _$MediaObjectImpl(
      url: json['url'] as String,
      type: json['type'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      originalDimensionsMissing: json['original_dimensions_missing'] as bool?,
      cropped: json['cropped'] as bool?,
      hasOriginalDimensions: json['has_original_dimensions'] as bool?,
      poster: json['poster'] == null
          ? null
          : MediaObject.fromJson(json['poster'] as Map<String, dynamic>),
      colors: (json['colors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$MediaObjectImplToJson(_$MediaObjectImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'original_dimensions_missing': instance.originalDimensionsMissing,
      'cropped': instance.cropped,
      'has_original_dimensions': instance.hasOriginalDimensions,
      'poster': instance.poster,
      'colors': instance.colors,
    };
