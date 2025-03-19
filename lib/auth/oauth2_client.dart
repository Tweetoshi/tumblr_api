import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:tumblr_api/auth/token_response.dart';

/// Tumblr OAuth2 Client
/// 
/// This class is used to authenticate with the Tumblr API using OAuth2.
/// It is used to get the access token for the user and to refresh the access token.
/// 
/// 
class TumblrOAuth2Client {
  final Dio _dio = Dio();

  final String clientId;
  final String clientSecret;
  final String redirectUri;
  final String authorizationEndpoint;
  final String tokenEndpoint;
  final String? refreshTokenEndpoint;

  TumblrOAuth2Client({
    required this.clientId,
    required this.clientSecret,
    required this.redirectUri,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    this.refreshTokenEndpoint,
  });

  /// Build the authorization URL for OAuth flow
  String getAuthorizationUrl(List<String> scopes,
      {String? state, Map<String, String>? additionalParams}) {
    final queryParams = {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri,
      'scope': scopes.join(' '),
      'state': state ?? DateTime.now().millisecondsSinceEpoch.toString(),
      if (additionalParams != null) ...additionalParams,
    };

    final uri =
        Uri.parse(authorizationEndpoint).replace(queryParameters: queryParams);
    return uri.toString();
  }

  /// Handle user authentication via browser
  Future<TokenResponse> authenticate({
    required String callbackUrlScheme,
    required List<String> scopes,
    bool? preferEphemeral = false,
    Map<String, String>? additionalAuthParams,
  }) async {
    final authUrl =
        getAuthorizationUrl(scopes, additionalParams: additionalAuthParams);

    final result = await FlutterWebAuth2.authenticate(
      url: authUrl,
      callbackUrlScheme: callbackUrlScheme,
      options: FlutterWebAuth2Options(
        preferEphemeral: preferEphemeral,
      ),
    );

    final code = Uri.parse(result).queryParameters['code'];

    if (code != null) {
      return await getAccessToken(code);
    } else {
      throw Exception('Authorization failed: No code returned');
    }
  }

  /// Exchange authorization code for access token
  Future<TokenResponse> getAccessToken(String authorizationCode) async {
    try {
      final response = await _dio.post(
        tokenEndpoint,
        data: {
          'client_id': clientId,
          'client_secret': clientSecret,
          'grant_type': 'authorization_code',
          'redirect_uri': redirectUri,
          'code': authorizationCode,
        },
      );

      if (response.statusCode == 200) {
        return TokenResponse.fromJson(response.data);
      } else {
        throw Exception(
            'Failed to exchange code for token: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to exchange code for token: $e');
    }
  }

  /// Refresh an access token using a refresh token
  Future<TokenResponse> refreshToken(String refreshToken) async {
    if (refreshTokenEndpoint == null) {
      throw Exception('Refresh token endpoint not configured');
    }

    try {
      final response = await _dio.post(
        refreshTokenEndpoint!,
        data: {
          'grant_type': 'refresh_token',
          'client_id': clientId,
          'client_secret': clientSecret,
          'refresh_token': refreshToken,
        },
      );

      if (response.statusCode == 200) {
        return TokenResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to refresh token: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to refresh token: $e');
    }
  }
}
