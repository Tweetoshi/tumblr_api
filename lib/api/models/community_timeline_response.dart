import 'package:tumblr_api/api/models/tumblr_post_model.dart';

class CommunityTimelineResponse {
  final List<TumblrPost> posts;
  final TimelineLinks? links;

  CommunityTimelineResponse({
    required this.posts,
    this.links,
  });

  factory CommunityTimelineResponse.fromJson(Map<String, dynamic> json) {
    final timeline = json['response']['timeline'];
    return CommunityTimelineResponse(
      posts: (timeline['elements'] as List<dynamic>)
          .map((post) => TumblrPost.fromJson(post))
          .toList(),
      links: timeline['_links'] != null 
          ? TimelineLinks.fromJson(timeline['_links'])
          : null,
    );
  }
}

class TimelineLinks {
  final NextLink? next;

  TimelineLinks({
    this.next,
  });

  factory TimelineLinks.fromJson(Map<String, dynamic> json) {
    return TimelineLinks(
      next: json['next'] != null ? NextLink.fromJson(json['next']) : null,
    );
  }
}

class NextLink {
  final String href;
  final String method;
  final Map<String, dynamic>? queryParams;

  NextLink({
    required this.href,
    required this.method,
    this.queryParams,
  });

  factory NextLink.fromJson(Map<String, dynamic> json) {
    return NextLink(
      href: json['href'],
      method: json['method'],
      queryParams: json['query_params'] as Map<String, dynamic>?,
    );
  }
} 