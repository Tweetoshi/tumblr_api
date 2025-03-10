import 'package:tumblr/api/user_v2/user_v2_service.dart';

abstract class TumblrApi {
  factory TumblrApi(String accessToken) => _TumblrApi(accessToken);

  UserService get user;

  // BlogService get blog;
}

class _TumblrApi implements TumblrApi {
  final String accessToken;

  _TumblrApi(this.accessToken)
      : user = UserService(accessToken: accessToken);

  @override
  final UserService user;

  // @override
  // final ThreadsMediaService media;
}
