import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

class UuidType {
  final String _uuid;

  UuidType(String uuid)
      : assert(_assertUuidIsValid(uuid)),
        _uuid = uuid;

  static UuidType generate() {
    return UuidType(const Uuid().v4());
  }

  static bool _assertUuidIsValid(String uuid) {
    try {
      Uuid.parse(uuid);
      return true;
    } on FormatException catch (_) {
      return false;
    }
  }

  @override
  String toString() {
    return _uuid;
  }

  @override
  bool operator ==(covariant UuidType other) => other._uuid == _uuid;

  @override
  int get hashCode => _uuid.hashCode;

  static String toJson(UuidType uuidType) => uuidType._uuid;
  static UuidType fromJson(String uuidType) => UuidType(uuidType);
}

String uuidTypeToJson(UuidType uuidType) => uuidType._uuid;
UuidType uuidTypeFromJson(dynamic uuidType) => UuidType.fromJson(uuidType);

class UuidJsonTypeConverter implements JsonConverter<UuidType, String> {
  const UuidJsonTypeConverter();

  @override
  UuidType fromJson(String json) => uuidTypeFromJson(json);

  @override
  String toJson(UuidType json) => uuidTypeToJson(json);
}
