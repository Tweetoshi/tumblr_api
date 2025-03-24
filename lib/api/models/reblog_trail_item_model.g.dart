// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reblog_trail_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReblogTrailItemImpl _$$ReblogTrailItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ReblogTrailItemImpl(
      post: json['post'] == null
          ? null
          : PostDetails.fromJson(json['post'] as Map<String, dynamic>),
      blog: json['blog'] == null
          ? null
          : TumblrBlog.fromJson(json['blog'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>)
          .map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      layout: (json['layout'] as List<dynamic>?)
          ?.map((e) => LayoutBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      brokenBlogName: json['broken_blog_name'] as String?,
    );

Map<String, dynamic> _$$ReblogTrailItemImplToJson(
        _$ReblogTrailItemImpl instance) =>
    <String, dynamic>{
      'post': instance.post,
      'blog': instance.blog,
      'content': instance.content,
      'layout': instance.layout,
      'broken_blog_name': instance.brokenBlogName,
    };
