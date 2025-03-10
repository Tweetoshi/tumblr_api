import 'package:tumblr/api/models/user_model.dart';
import 'package:tumblr/base_api.dart';

abstract class UserService {
  factory UserService({required String accessToken}) =>
      _UserService(accessToken: accessToken);

  Future<TumblrUser> getUserProfile();
}

class _UserService extends BaseService implements UserService {
  _UserService({required super.accessToken});

  @override
  Future<TumblrUser> getUserProfile() async {
    try {
      final response = await super.get('user/info');

      return TumblrUser.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to get user profile');
    }
  }
}
