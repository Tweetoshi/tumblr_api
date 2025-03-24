import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_object.freezed.dart';
part 'media_object.g.dart';

/// Media object used in various content blocks
@freezed
class MediaObject with _$MediaObject {
  const MediaObject._();

  const factory MediaObject({
    required String url,
    String? type,
    int? width,
    int? height,
    bool? originalDimensionsMissing,
    bool? cropped,
    bool? hasOriginalDimensions,
    MediaObject? poster,
    Map<String, String>? colors,
  }) = _MediaObject;

  factory MediaObject.fromJson(Map<String, dynamic> json) =>
      _$MediaObjectFromJson(json);
}
