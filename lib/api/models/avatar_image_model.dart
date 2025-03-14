class AvatarImage {
  final String url;
  final int? width;
  final int? height;

  AvatarImage({
    required this.url,
    this.width,
    this.height,
  });

  factory AvatarImage.fromJson(Map<String, dynamic> json) {
    return AvatarImage(
      url: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'url': url,
    };

    if (width != null) data['width'] = width;
    if (height != null) data['height'] = height;

    return data;
  }
}
