import 'dart:convert';
import 'package:oauth1/oauth1.dart' as oauth1;
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

/// Tumblr OAuth1 Client
/// 
/// This class is used to authenticate with the Tumblr API using OAuth1.
/// It is used to get the credentials for the user and to make requests to the API.
/// 
/// This approach is no recommended to use, use [TumblrOAuth2Client] instead.
/// 
/// 
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
}
