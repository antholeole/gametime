import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid_type/uuid_type.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@freezed
class Film with _$Film {
  factory Film({
    required String name,
    required String comment,
    @UuidJsonTypeConverter() required UuidType id,
    required String accessUrl,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
