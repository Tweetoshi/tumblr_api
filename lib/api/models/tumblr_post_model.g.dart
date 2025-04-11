// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tumblr_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TumblrPostImpl _$$TumblrPostImplFromJson(Map<String, dynamic> json) =>
    _$TumblrPostImpl(
      id: const StringFromIntConverter().fromJson(json['id']),
      blog: TumblrBlog.fromJson(json['blog'] as Map<String, dynamic>),
      authorBlog: json['author_blog'] == null
          ? null
          : TumblrBlog.fromJson(json['author_blog'] as Map<String, dynamic>),
      content: (json['content'] as List<dynamic>)
          .map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      layout: (json['layout'] as List<dynamic>?)
          ?.map((e) => LayoutBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      trail: (json['trail'] as List<dynamic>?)
          ?.map((e) => ReblogTrailItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: (json['timestamp'] as num).toInt(),
      postUrl: json['post_url'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      reblogKey: json['reblog_key'] as String?,
      summary: json['summary'] as String?,
      isPaywalled: json['is_paywalled'] as bool?,
      paywallAccess: json['paywall_access'] as String?,
      liked: json['liked'] as bool? ?? false,
      followed: json['followed'] as bool? ?? false,
      noteCount: (json['note_count'] as num?)?.toInt(),
      paywallReblogView: json['paywall_reblog_view'] as Map<String, dynamic>?,
      subscriptionPlan: json['subscription_plan'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$TumblrPostImplToJson(_$TumblrPostImpl instance) =>
    <String, dynamic>{
      'id': const StringFromIntConverter().toJson(instance.id),
      'blog': instance.blog,
      'author_blog': instance.authorBlog,
      'content': instance.content,
      'layout': instance.layout,
      'trail': instance.trail,
      'timestamp': instance.timestamp,
      'post_url': instance.postUrl,
      'tags': instance.tags,
      'reblog_key': instance.reblogKey,
      'summary': instance.summary,
      'is_paywalled': instance.isPaywalled,
      'paywall_access': instance.paywallAccess,
      'liked': instance.liked,
      'followed': instance.followed,
      'note_count': instance.noteCount,
      'paywall_reblog_view': instance.paywallReblogView,
      'subscription_plan': instance.subscriptionPlan,
    };

_$PostDetailsImpl _$$PostDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PostDetailsImpl(
      id: json['id'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      isCommercial: json['is_commercial'] as bool?,
      isPaywalled: json['is_paywalled'] as bool?,
      paywallAccess: json['paywall_access'] as String?,
    );

Map<String, dynamic> _$$PostDetailsImplToJson(_$PostDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp,
      'is_commercial': instance.isCommercial,
      'is_paywalled': instance.isPaywalled,
      'paywall_access': instance.paywallAccess,
    };
