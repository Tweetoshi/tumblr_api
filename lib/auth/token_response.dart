/// Generic token response model for OAuth flows
class TokenResponse {
  final String accessToken;
  final int expiresIn;
  final String? refreshToken;
  final String scope;
  final String tokenType;

  TokenResponse({
    required this.accessToken,
    required this.expiresIn,
    this.refreshToken,
    required this.scope,
    required this.tokenType,
  });

  /// Create an expiration DateTime based on current time and expiresIn
  DateTime get expirationTime => 
      DateTime.now().add(Duration(seconds: expiresIn));
      
  /// Check if the token is expired
  bool get isExpired =>
      DateTime.now().isAfter(expirationTime);

  /// Creates a TokenResponse from JSON data
  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      accessToken: json['access_token'],
      expiresIn: json['expires_in'],
      refreshToken: json['refresh_token'],
      scope: json['scope'],
      tokenType: json['token_type'],
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
    };
  }
}