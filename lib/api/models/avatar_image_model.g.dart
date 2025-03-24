// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarImageImpl _$$AvatarImageImplFromJson(Map<String, dynamic> json) =>
    _$AvatarImageImpl(
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AvatarImageImplToJson(_$AvatarImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
