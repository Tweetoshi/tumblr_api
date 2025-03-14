
/// Embed Iframe Object for videos
class EmbedIframeObject {
  final String url;
  final int width;
  final int height;

  EmbedIframeObject({
    required this.url,
    required this.width,
    required this.height,
  });

  factory EmbedIframeObject.fromJson(Map<String, dynamic> json) {
    return EmbedIframeObject(
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'width': width,
      'height': height,
    };
  }
}