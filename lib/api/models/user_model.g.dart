// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TumblrUserImpl _$$TumblrUserImplFromJson(Map<String, dynamic> json) =>
    _$TumblrUserImpl(
      following: (json['following'] as num?)?.toInt(),
      defaultPostFormat: json['default_post_format'] as String?,
      name: json['name'] as String?,
      likes: (json['likes'] as num?)?.toInt(),
      blogs: (json['blogs'] as List<dynamic>?)
          ?.map((e) => TumblrBlog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TumblrUserImplToJson(_$TumblrUserImpl instance) =>
    <String, dynamic>{
      'following': instance.following,
      'default_post_format': instance.defaultPostFormat,
      'name': instance.name,
      'likes': instance.likes,
      'blogs': instance.blogs,
    };
