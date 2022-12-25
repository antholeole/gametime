import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid_type/uuid_type.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  factory Tokens({
    @UuidConverter() required UuidType userId,
    required String refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
