class TumblrApiException implements Exception {
  final int statusCode;
  final int? subcode;
  final String message;
  final dynamic response;

  TumblrApiException({
    required this.statusCode,
    this.subcode,
    required this.message,
    this.response,
  });

  @override
  String toString() => 'TumblrApiException: $statusCode${subcode != null ? '.$subcode' : ''} - $message';
}
