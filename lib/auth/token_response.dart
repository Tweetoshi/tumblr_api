/// Generic token response model for OAuth flows
class TokenResponse {
  final String accessToken;
  final int expiresIn;
  final String? refreshToken;
  final String scope;
  final String tokenType;
  final DateTime? expiresOn;

  TokenResponse({
    required this.accessToken,
    required this.expiresIn,
    this.refreshToken,
    required this.scope,
    required this.tokenType,
    DateTime? expiresOn,
  }) : expiresOn =
            expiresOn ?? DateTime.now().add(Duration(seconds: expiresIn));

  /// Check if the token is expired
  bool get isExpired => DateTime.now().isAfter(expiresOn!);

  /// Creates a TokenResponse from JSON data
  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    DateTime? expiresOn;
    if (json['expires_on'] != null) {
      expiresOn = DateTime.parse(json['expires_on']);
    }

    return TokenResponse(
      accessToken: json['access_token'],
      expiresIn: json['expires_in'],
      refreshToken: json['refresh_token'],
      scope: json['scope'],
      tokenType: json['token_type'],
      expiresOn: expiresOn,
    );
  }

  /// Converts the TokenResponse to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'expires_in': expiresIn,
      'refresh_token': refreshToken,
      'scope': scope,
      'token_type': tokenType,
      'expires_on': expiresOn?.toIso8601String(),
    };
  }
}
