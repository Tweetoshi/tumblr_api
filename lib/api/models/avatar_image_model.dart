import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_image_model.freezed.dart';
part 'avatar_image_model.g.dart';

/// Represents an avatar image with various sizes
@freezed
class AvatarImage with _$AvatarImage {
  const AvatarImage._();

  const factory AvatarImage({
    required String url,
    int? width,
    int? height,
  }) = _AvatarImage;

  factory AvatarImage.fromJson(Map<String, dynamic> json) =>
      _$AvatarImageFromJson(json);
}
