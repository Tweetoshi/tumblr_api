/// Media object used in various content blocks
class MediaObject {
  final String url;
  final String? type;
  final int? width;
  final int? height;
  final bool? originalDimensionsMissing;
  final bool? cropped;
  final bool? hasOriginalDimensions;
  final MediaObject? poster;
  final Map<String, String>? colors;

  MediaObject({
    required this.url,
    this.type,
    this.width,
    this.height,
    this.originalDimensionsMissing,
    this.cropped,
    this.hasOriginalDimensions,
    this.poster,
    this.colors,
  });

  factory MediaObject.fromJson(Map<String, dynamic> json) {
    return MediaObject(
      url: json['url'],
      type: json['type'],
      width: json['width'],
      height: json['height'],
      originalDimensionsMissing: json['original_dimensions_missing'],
      cropped: json['cropped'],
      hasOriginalDimensions: json['has_original_dimensions'],
      poster:
          json['poster'] != null ? MediaObject.fromJson(json['poster']) : null,
      colors: json['colors'] != null
          ? Map<String, String>.from(json['colors'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'url': url,
    };

    if (type != null) data['type'] = type;
    if (width != null) data['width'] = width;
    if (height != null) data['height'] = height;
    if (originalDimensionsMissing != null)
      data['original_dimensions_missing'] = originalDimensionsMissing;
    if (cropped != null) data['cropped'] = cropped;
    if (hasOriginalDimensions != null)
      data['has_original_dimensions'] = hasOriginalDimensions;
    if (poster != null) data['poster'] = poster!.toJson();
    if (colors != null) data['colors'] = colors;

    return data;
  }
}
