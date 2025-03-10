import 'package:tumblr_api/api/posts/posts_service.dart';
import 'package:tumblr_api/api/user_v2/user_v2_service.dart';

abstract class TumblrApi {
  factory TumblrApi(String accessToken) => _TumblrApi(accessToken);

  UserService get user;

  PostsService get posts;
}

class _TumblrApi implements TumblrApi {
  final String accessToken;

  _TumblrApi(this.accessToken)
      : user = UserService(accessToken: accessToken),
        posts = PostsService(accessToken: accessToken);

  @override
  final UserService user;

  @override
  final PostsService posts;
}
