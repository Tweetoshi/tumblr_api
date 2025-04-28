// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TumblrBlogImpl _$$TumblrBlogImplFromJson(Map<String, dynamic> json) =>
    _$TumblrBlogImpl(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      title: json['title'] as String?,
      url: json['url'] as String?,
      avatar: (json['avatar'] as List<dynamic>?)
          ?.map((e) => AvatarImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      isBlockedFromPrimary: json['is_blocked_from_primary'] as bool? ?? false,
      followers: (json['followers'] as num?)?.toInt(),
      followed: json['followed'] as bool?,
      primary: json['primary'] as bool? ?? false,
    );

Map<String, dynamic> _$$TumblrBlogImplToJson(_$TumblrBlogImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'title': instance.title,
      'url': instance.url,
      'avatar': instance.avatar,
      'description': instance.description,
      'is_blocked_from_primary': instance.isBlockedFromPrimary,
      'followers': instance.followers,
      'followed': instance.followed,
      'primary': instance.primary,
    };
