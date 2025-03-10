import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:tumblr/api/models/tumblr_post_model.dart';
import 'package:tumblr/api/models/user_model.dart';

class TumblrOAuth1Client {
  static const String _requestTokenUrl =
      'https://www.tumblr.com/oauth/request_token';
  static const String _authorizeUrl = 'https://www.tumblr.com/oauth/authorize';
  static const String _accessTokenUrl =
      'https://www.tumblr.com/oauth/access_token';

  final String apiKey;
  final String apiSecret;
  final String callbackUrlScheme;

  late oauth1.Platform _platform;
  late oauth1.ClientCredentials _clientCredentials;
  late oauth1.Authorization _authorization;

  oauth1.Credentials? _credentials;

  TumblrOAuth1Client({
    required this.apiKey,
    required this.apiSecret,
    required this.callbackUrlScheme,
  }) {
    _platform = oauth1.Platform(
      _requestTokenUrl,
      _authorizeUrl,
      _accessTokenUrl,
      oauth1.SignatureMethods.hmacSha1,
    );

    _clientCredentials = oauth1.ClientCredentials(apiKey, apiSecret);
    _authorization = oauth1.Authorization(_clientCredentials, _platform);
  }

  /// Check if the client has valid credentials
  bool get isAuthorized => _credentials != null;

  /// Get the current credentials
  oauth1.Credentials? get credentials => _credentials;

  /// Set credentials if you have stored them previously
  set credentials(oauth1.Credentials? creds) {
    _credentials = creds;
  }

  /// Authorize the client using the OAuth1 flow
  Future<oauth1.Credentials> authorize() async {
    try {
      // Request temporary credentials
      final requestTokenResponse =
          await _authorization.requestTemporaryCredentials(callbackUrlScheme);

      // Get the authorization URL
      final authUrl = _authorization.getResourceOwnerAuthorizationURI(
        requestTokenResponse.credentials.token,
      );

      // Open browser for authorization
      final result = await FlutterWebAuth2.authenticate(
        url: authUrl,
        callbackUrlScheme: callbackUrlScheme,
      );

      // Extract the oauth_verifier from the callback URL
      final verifier = Uri.parse(result).queryParameters['oauth_verifier'];

      if (verifier == null) {
        throw Exception('Authorization failed: No verifier returned');
      }

      // Exchange the verifier for access token credentials
      final accessTokenResponse = await _authorization.requestTokenCredentials(
        requestTokenResponse.credentials,
        verifier,
      );

      // Store the credentials
      _credentials = accessTokenResponse.credentials;

      return _credentials!;
    } catch (e) {
      throw Exception('Authorization failed: $e');
    }
  }

  /// Create an authenticated client for making API requests
  oauth1.Client createClient() {
    if (_credentials == null) {
      throw Exception(
          'Not authorized. Call authorize() first or set credentials.');
    }

    return oauth1.Client(
      _platform.signatureMethod,
      _clientCredentials,
      _credentials!,
    );
  }

  /// Make a GET request to the Tumblr API
  Future<Map<String, dynamic>> get(String endpoint) async {
    final client = createClient();
    final response =
        await client.get(Uri.parse('https://api.tumblr.com/v2/$endpoint'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'API request failed with status: ${response.statusCode}, body: ${response.body}');
    }
  }

  /// Make a POST request to the Tumblr API
  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    final client = createClient();
    final response = await client.post(
      Uri.parse('https://api.tumblr.com/v2/$endpoint'),
      body: data,
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception(
          'API request failed with status: ${response.statusCode}, body: ${response.body}');
    }
  }

  /// Helper method to get user info
  Future<TumblrUser> getUserInfo() async {
    final response = await get('user/info');
    return TumblrUser.fromJson(response);
  }

  /// Helper method to get a user's dashboard
  Future<Map<String, dynamic>> getDashboard({
    int? limit = 20,
    bool? npf = true,
    bool? reblog_info = false,
    bool? notes_info = false,
  }) async {
    String endpoint = 'user/dashboard';

    final queryParams = <String, String>{};
    if (limit != null) queryParams['limit'] = limit.toString();
    if (npf != null) queryParams['npf'] = npf.toString();
    if (reblog_info != null)
      queryParams['reblog_info'] = reblog_info.toString();
    if (notes_info != null) queryParams['notes_info'] = notes_info.toString();

    if (queryParams.isNotEmpty) {
      final queryString = queryParams.entries
          .map((e) => '${e.key}=${Uri.encodeComponent(e.value)}')
          .join('&');
      endpoint = '$endpoint?$queryString';
    }

    return await get(endpoint);
  }

  Future<List<TumblrPost>> getDashboardPosts({
    int? limit = 20,
    bool? reblog_info = false,
    bool? notes_info = false,
  }) async {
    final dashboard = await getDashboard(
        limit: limit, reblog_info: reblog_info, notes_info: notes_info);
    final posts = dashboard['response']['posts'] as List<dynamic>;
    final postsList = posts.map((post) => TumblrPost.fromJson(post as Map<String, dynamic>)).toList();
    return postsList as List<TumblrPost>;
  }

  /// Helper method to get a blog's posts
  Future<Map<String, dynamic>> getBlogPosts(
    String blogIdentifier, {
    int? limit,
    int? offset,
    String? type,
  }) async {
    String endpoint = 'blog/$blogIdentifier/posts';

    final queryParams = <String, String>{};
    if (limit != null) queryParams['limit'] = limit.toString();
    if (offset != null) queryParams['offset'] = offset.toString();
    if (type != null) queryParams['type'] = type;

    if (queryParams.isNotEmpty) {
      final queryString = queryParams.entries
          .map((e) => '${e.key}=${Uri.encodeComponent(e.value)}')
          .join('&');
      endpoint = '$endpoint?$queryString';
    }

    return await get(endpoint);
  }
}
