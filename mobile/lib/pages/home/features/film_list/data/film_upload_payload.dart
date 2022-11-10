import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_upload_payload.freezed.dart';

@freezed
class FilmUploadPayload with _$FilmUploadPayload {
  factory FilmUploadPayload({
    required String name,
    required File file,
    String? description,
  }) = _FilmUploadPayload;
}
