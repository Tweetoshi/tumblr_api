import 'package:tumblr_api/api/blog/blog_service.dart';
import 'package:tumblr_api/api/communities/communities_service.dart';
import 'package:tumblr_api/api/tag/tag_service.dart';
import 'package:tumblr_api/api/user/user_service.dart';

abstract class TumblrApi {
  factory TumblrApi(String accessToken) => _TumblrApi(accessToken);

  UserService get user;

  BlogService get blog;

  CommunitiesService get communities;

  TagService get tag;
}

class _TumblrApi implements TumblrApi {
  final String accessToken;

  _TumblrApi(this.accessToken)
      : user = UserService(accessToken: accessToken),
        blog = BlogService(accessToken: accessToken),
        communities = CommunitiesService(accessToken: accessToken),
        tag = TagService(accessToken: accessToken);

  @override
  final UserService user;

  @override
  final BlogService blog;

  @override
  final CommunitiesService communities;

  @override
  final TagService tag;
}
