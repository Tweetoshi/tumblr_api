import 'package:freezed_annotation/freezed_annotation.dart';

part 'embed_iframe_object.freezed.dart';
part 'embed_iframe_object.g.dart';

/// Embed Iframe Object for videos
@freezed
class EmbedIframeObject with _$EmbedIframeObject {
  const EmbedIframeObject._();

  const factory EmbedIframeObject({
    required String url,
    required int width,
    required int height,
  }) = _EmbedIframeObject;

  factory EmbedIframeObject.fromJson(Map<String, dynamic> json) =>
      _$EmbedIframeObjectFromJson(json);
}