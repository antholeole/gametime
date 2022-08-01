import 'package:json_annotation/json_annotation.dart';
import 'package:uuid_type/uuid_type.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Input$UserCondition {
  Input$UserCondition({this.id, this.createdAt, this.updatedAt, this.admin});

  @override
  factory Input$UserCondition.fromJson(Map<String, dynamic> json) =>
      _$Input$UserConditionFromJson(json);

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? id;

  final String? createdAt;

  final String? updatedAt;

  final bool? admin;

  Map<String, dynamic> toJson() => _$Input$UserConditionToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$admin = admin;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt, l$admin]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserCondition) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$admin = admin;
    final lOther$admin = other.admin;
    if (l$admin != lOther$admin) return false;
    return true;
  }

  CopyWith$Input$UserCondition<Input$UserCondition> get copyWith =>
      CopyWith$Input$UserCondition(this, (i) => i);
}

abstract class CopyWith$Input$UserCondition<TRes> {
  factory CopyWith$Input$UserCondition(Input$UserCondition instance,
          TRes Function(Input$UserCondition) then) =
      _CopyWithImpl$Input$UserCondition;

  factory CopyWith$Input$UserCondition.stub(TRes res) =
      _CopyWithStubImpl$Input$UserCondition;

  TRes call({UuidType? id, String? createdAt, String? updatedAt, bool? admin});
}

class _CopyWithImpl$Input$UserCondition<TRes>
    implements CopyWith$Input$UserCondition<TRes> {
  _CopyWithImpl$Input$UserCondition(this._instance, this._then);

  final Input$UserCondition _instance;

  final TRes Function(Input$UserCondition) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? admin = _undefined}) =>
      _then(Input$UserCondition(
          id: id == _undefined ? _instance.id : (id as UuidType?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as String?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as String?),
          admin: admin == _undefined ? _instance.admin : (admin as bool?)));
}

class _CopyWithStubImpl$Input$UserCondition<TRes>
    implements CopyWith$Input$UserCondition<TRes> {
  _CopyWithStubImpl$Input$UserCondition(this._res);

  TRes _res;

  call({UuidType? id, String? createdAt, String? updatedAt, bool? admin}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UserFilter {
  Input$UserFilter(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.admin,
      this.and,
      this.or,
      this.not});

  @override
  factory Input$UserFilter.fromJson(Map<String, dynamic> json) =>
      _$Input$UserFilterFromJson(json);

  final Input$UUIDFilter? id;

  final Input$DatetimeFilter? createdAt;

  final Input$DatetimeFilter? updatedAt;

  final Input$BooleanFilter? admin;

  final List<Input$UserFilter>? and;

  final List<Input$UserFilter>? or;

  final Input$UserFilter? not;

  Map<String, dynamic> toJson() => _$Input$UserFilterToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$admin = admin;
    final l$and = and;
    final l$or = or;
    final l$not = not;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$updatedAt,
      l$admin,
      l$and == null ? null : Object.hashAll(l$and.map((v) => v)),
      l$or == null ? null : Object.hashAll(l$or.map((v) => v)),
      l$not
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserFilter) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$admin = admin;
    final lOther$admin = other.admin;
    if (l$admin != lOther$admin) return false;
    final l$and = and;
    final lOther$and = other.and;
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) return false;
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) return false;
      }
    } else if (l$and != lOther$and) {
      return false;
    }

    final l$or = or;
    final lOther$or = other.or;
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) return false;
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) return false;
      }
    } else if (l$or != lOther$or) {
      return false;
    }

    final l$not = not;
    final lOther$not = other.not;
    if (l$not != lOther$not) return false;
    return true;
  }

  CopyWith$Input$UserFilter<Input$UserFilter> get copyWith =>
      CopyWith$Input$UserFilter(this, (i) => i);
}

abstract class CopyWith$Input$UserFilter<TRes> {
  factory CopyWith$Input$UserFilter(
          Input$UserFilter instance, TRes Function(Input$UserFilter) then) =
      _CopyWithImpl$Input$UserFilter;

  factory CopyWith$Input$UserFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$UserFilter;

  TRes call(
      {Input$UUIDFilter? id,
      Input$DatetimeFilter? createdAt,
      Input$DatetimeFilter? updatedAt,
      Input$BooleanFilter? admin,
      List<Input$UserFilter>? and,
      List<Input$UserFilter>? or,
      Input$UserFilter? not});
  CopyWith$Input$UUIDFilter<TRes> get id;
  CopyWith$Input$DatetimeFilter<TRes> get createdAt;
  CopyWith$Input$DatetimeFilter<TRes> get updatedAt;
  CopyWith$Input$BooleanFilter<TRes> get admin;
  TRes and(
      Iterable<Input$UserFilter>? Function(
              Iterable<CopyWith$Input$UserFilter<Input$UserFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$UserFilter>? Function(
              Iterable<CopyWith$Input$UserFilter<Input$UserFilter>>?)
          _fn);
  CopyWith$Input$UserFilter<TRes> get not;
}

class _CopyWithImpl$Input$UserFilter<TRes>
    implements CopyWith$Input$UserFilter<TRes> {
  _CopyWithImpl$Input$UserFilter(this._instance, this._then);

  final Input$UserFilter _instance;

  final TRes Function(Input$UserFilter) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? admin = _undefined,
          Object? and = _undefined,
          Object? or = _undefined,
          Object? not = _undefined}) =>
      _then(Input$UserFilter(
          id: id == _undefined ? _instance.id : (id as Input$UUIDFilter?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as Input$DatetimeFilter?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as Input$DatetimeFilter?),
          admin: admin == _undefined
              ? _instance.admin
              : (admin as Input$BooleanFilter?),
          and: and == _undefined
              ? _instance.and
              : (and as List<Input$UserFilter>?),
          or: or == _undefined ? _instance.or : (or as List<Input$UserFilter>?),
          not: not == _undefined ? _instance.not : (not as Input$UserFilter?)));
  CopyWith$Input$UUIDFilter<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$UUIDFilter.stub(_then(_instance))
        : CopyWith$Input$UUIDFilter(local$id, (e) => call(id: e));
  }

  CopyWith$Input$DatetimeFilter<TRes> get createdAt {
    final local$createdAt = _instance.createdAt;
    return local$createdAt == null
        ? CopyWith$Input$DatetimeFilter.stub(_then(_instance))
        : CopyWith$Input$DatetimeFilter(
            local$createdAt, (e) => call(createdAt: e));
  }

  CopyWith$Input$DatetimeFilter<TRes> get updatedAt {
    final local$updatedAt = _instance.updatedAt;
    return local$updatedAt == null
        ? CopyWith$Input$DatetimeFilter.stub(_then(_instance))
        : CopyWith$Input$DatetimeFilter(
            local$updatedAt, (e) => call(updatedAt: e));
  }

  CopyWith$Input$BooleanFilter<TRes> get admin {
    final local$admin = _instance.admin;
    return local$admin == null
        ? CopyWith$Input$BooleanFilter.stub(_then(_instance))
        : CopyWith$Input$BooleanFilter(local$admin, (e) => call(admin: e));
  }

  TRes and(
          Iterable<Input$UserFilter>? Function(
                  Iterable<CopyWith$Input$UserFilter<Input$UserFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$UserFilter(e, (i) => i)))?.toList());
  TRes or(
          Iterable<Input$UserFilter>? Function(
                  Iterable<CopyWith$Input$UserFilter<Input$UserFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$UserFilter(e, (i) => i)))?.toList());
  CopyWith$Input$UserFilter<TRes> get not {
    final local$not = _instance.not;
    return local$not == null
        ? CopyWith$Input$UserFilter.stub(_then(_instance))
        : CopyWith$Input$UserFilter(local$not, (e) => call(not: e));
  }
}

class _CopyWithStubImpl$Input$UserFilter<TRes>
    implements CopyWith$Input$UserFilter<TRes> {
  _CopyWithStubImpl$Input$UserFilter(this._res);

  TRes _res;

  call(
          {Input$UUIDFilter? id,
          Input$DatetimeFilter? createdAt,
          Input$DatetimeFilter? updatedAt,
          Input$BooleanFilter? admin,
          List<Input$UserFilter>? and,
          List<Input$UserFilter>? or,
          Input$UserFilter? not}) =>
      _res;
  CopyWith$Input$UUIDFilter<TRes> get id =>
      CopyWith$Input$UUIDFilter.stub(_res);
  CopyWith$Input$DatetimeFilter<TRes> get createdAt =>
      CopyWith$Input$DatetimeFilter.stub(_res);
  CopyWith$Input$DatetimeFilter<TRes> get updatedAt =>
      CopyWith$Input$DatetimeFilter.stub(_res);
  CopyWith$Input$BooleanFilter<TRes> get admin =>
      CopyWith$Input$BooleanFilter.stub(_res);
  and(_fn) => _res;
  or(_fn) => _res;
  CopyWith$Input$UserFilter<TRes> get not =>
      CopyWith$Input$UserFilter.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$UUIDFilter {
  Input$UUIDFilter(
      {this.isNull,
      this.equalTo,
      this.notEqualTo,
      this.distinctFrom,
      this.notDistinctFrom,
      this.$in,
      this.notIn,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo});

  @override
  factory Input$UUIDFilter.fromJson(Map<String, dynamic> json) =>
      _$Input$UUIDFilterFromJson(json);

  final bool? isNull;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? equalTo;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? notEqualTo;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? distinctFrom;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? notDistinctFrom;

  @JsonKey(
      name: 'in',
      fromJson: _nullable$_list$uuidTypeFromJson,
      toJson: _nullable$_list$uuidTypeToJson)
  final List<UuidType>? $in;

  @JsonKey(
      fromJson: _nullable$_list$uuidTypeFromJson,
      toJson: _nullable$_list$uuidTypeToJson)
  final List<UuidType>? notIn;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? lessThan;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? lessThanOrEqualTo;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? greaterThan;

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? greaterThanOrEqualTo;

  Map<String, dynamic> toJson() => _$Input$UUIDFilterToJson(this);
  int get hashCode {
    final l$isNull = isNull;
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$distinctFrom = distinctFrom;
    final l$notDistinctFrom = notDistinctFrom;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    return Object.hashAll([
      l$isNull,
      l$equalTo,
      l$notEqualTo,
      l$distinctFrom,
      l$notDistinctFrom,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UUIDFilter) || runtimeType != other.runtimeType)
      return false;
    final l$isNull = isNull;
    final lOther$isNull = other.isNull;
    if (l$isNull != lOther$isNull) return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$distinctFrom = distinctFrom;
    final lOther$distinctFrom = other.distinctFrom;
    if (l$distinctFrom != lOther$distinctFrom) return false;
    final l$notDistinctFrom = notDistinctFrom;
    final lOther$notDistinctFrom = other.notDistinctFrom;
    if (l$notDistinctFrom != lOther$notDistinctFrom) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    return true;
  }

  CopyWith$Input$UUIDFilter<Input$UUIDFilter> get copyWith =>
      CopyWith$Input$UUIDFilter(this, (i) => i);
}

abstract class CopyWith$Input$UUIDFilter<TRes> {
  factory CopyWith$Input$UUIDFilter(
          Input$UUIDFilter instance, TRes Function(Input$UUIDFilter) then) =
      _CopyWithImpl$Input$UUIDFilter;

  factory CopyWith$Input$UUIDFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$UUIDFilter;

  TRes call(
      {bool? isNull,
      UuidType? equalTo,
      UuidType? notEqualTo,
      UuidType? distinctFrom,
      UuidType? notDistinctFrom,
      List<UuidType>? $in,
      List<UuidType>? notIn,
      UuidType? lessThan,
      UuidType? lessThanOrEqualTo,
      UuidType? greaterThan,
      UuidType? greaterThanOrEqualTo});
}

class _CopyWithImpl$Input$UUIDFilter<TRes>
    implements CopyWith$Input$UUIDFilter<TRes> {
  _CopyWithImpl$Input$UUIDFilter(this._instance, this._then);

  final Input$UUIDFilter _instance;

  final TRes Function(Input$UUIDFilter) _then;

  static const _undefined = {};

  TRes call(
          {Object? isNull = _undefined,
          Object? equalTo = _undefined,
          Object? notEqualTo = _undefined,
          Object? distinctFrom = _undefined,
          Object? notDistinctFrom = _undefined,
          Object? $in = _undefined,
          Object? notIn = _undefined,
          Object? lessThan = _undefined,
          Object? lessThanOrEqualTo = _undefined,
          Object? greaterThan = _undefined,
          Object? greaterThanOrEqualTo = _undefined}) =>
      _then(Input$UUIDFilter(
          isNull: isNull == _undefined ? _instance.isNull : (isNull as bool?),
          equalTo: equalTo == _undefined
              ? _instance.equalTo
              : (equalTo as UuidType?),
          notEqualTo: notEqualTo == _undefined
              ? _instance.notEqualTo
              : (notEqualTo as UuidType?),
          distinctFrom: distinctFrom == _undefined
              ? _instance.distinctFrom
              : (distinctFrom as UuidType?),
          notDistinctFrom: notDistinctFrom == _undefined
              ? _instance.notDistinctFrom
              : (notDistinctFrom as UuidType?),
          $in: $in == _undefined ? _instance.$in : ($in as List<UuidType>?),
          notIn: notIn == _undefined
              ? _instance.notIn
              : (notIn as List<UuidType>?),
          lessThan: lessThan == _undefined
              ? _instance.lessThan
              : (lessThan as UuidType?),
          lessThanOrEqualTo: lessThanOrEqualTo == _undefined
              ? _instance.lessThanOrEqualTo
              : (lessThanOrEqualTo as UuidType?),
          greaterThan: greaterThan == _undefined
              ? _instance.greaterThan
              : (greaterThan as UuidType?),
          greaterThanOrEqualTo: greaterThanOrEqualTo == _undefined
              ? _instance.greaterThanOrEqualTo
              : (greaterThanOrEqualTo as UuidType?)));
}

class _CopyWithStubImpl$Input$UUIDFilter<TRes>
    implements CopyWith$Input$UUIDFilter<TRes> {
  _CopyWithStubImpl$Input$UUIDFilter(this._res);

  TRes _res;

  call(
          {bool? isNull,
          UuidType? equalTo,
          UuidType? notEqualTo,
          UuidType? distinctFrom,
          UuidType? notDistinctFrom,
          List<UuidType>? $in,
          List<UuidType>? notIn,
          UuidType? lessThan,
          UuidType? lessThanOrEqualTo,
          UuidType? greaterThan,
          UuidType? greaterThanOrEqualTo}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$DatetimeFilter {
  Input$DatetimeFilter(
      {this.isNull,
      this.equalTo,
      this.notEqualTo,
      this.distinctFrom,
      this.notDistinctFrom,
      this.$in,
      this.notIn,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo});

  @override
  factory Input$DatetimeFilter.fromJson(Map<String, dynamic> json) =>
      _$Input$DatetimeFilterFromJson(json);

  final bool? isNull;

  final String? equalTo;

  final String? notEqualTo;

  final String? distinctFrom;

  final String? notDistinctFrom;

  @JsonKey(name: 'in')
  final List<String>? $in;

  final List<String>? notIn;

  final String? lessThan;

  final String? lessThanOrEqualTo;

  final String? greaterThan;

  final String? greaterThanOrEqualTo;

  Map<String, dynamic> toJson() => _$Input$DatetimeFilterToJson(this);
  int get hashCode {
    final l$isNull = isNull;
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$distinctFrom = distinctFrom;
    final l$notDistinctFrom = notDistinctFrom;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    return Object.hashAll([
      l$isNull,
      l$equalTo,
      l$notEqualTo,
      l$distinctFrom,
      l$notDistinctFrom,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DatetimeFilter) || runtimeType != other.runtimeType)
      return false;
    final l$isNull = isNull;
    final lOther$isNull = other.isNull;
    if (l$isNull != lOther$isNull) return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$distinctFrom = distinctFrom;
    final lOther$distinctFrom = other.distinctFrom;
    if (l$distinctFrom != lOther$distinctFrom) return false;
    final l$notDistinctFrom = notDistinctFrom;
    final lOther$notDistinctFrom = other.notDistinctFrom;
    if (l$notDistinctFrom != lOther$notDistinctFrom) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    return true;
  }

  CopyWith$Input$DatetimeFilter<Input$DatetimeFilter> get copyWith =>
      CopyWith$Input$DatetimeFilter(this, (i) => i);
}

abstract class CopyWith$Input$DatetimeFilter<TRes> {
  factory CopyWith$Input$DatetimeFilter(Input$DatetimeFilter instance,
          TRes Function(Input$DatetimeFilter) then) =
      _CopyWithImpl$Input$DatetimeFilter;

  factory CopyWith$Input$DatetimeFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DatetimeFilter;

  TRes call(
      {bool? isNull,
      String? equalTo,
      String? notEqualTo,
      String? distinctFrom,
      String? notDistinctFrom,
      List<String>? $in,
      List<String>? notIn,
      String? lessThan,
      String? lessThanOrEqualTo,
      String? greaterThan,
      String? greaterThanOrEqualTo});
}

class _CopyWithImpl$Input$DatetimeFilter<TRes>
    implements CopyWith$Input$DatetimeFilter<TRes> {
  _CopyWithImpl$Input$DatetimeFilter(this._instance, this._then);

  final Input$DatetimeFilter _instance;

  final TRes Function(Input$DatetimeFilter) _then;

  static const _undefined = {};

  TRes call(
          {Object? isNull = _undefined,
          Object? equalTo = _undefined,
          Object? notEqualTo = _undefined,
          Object? distinctFrom = _undefined,
          Object? notDistinctFrom = _undefined,
          Object? $in = _undefined,
          Object? notIn = _undefined,
          Object? lessThan = _undefined,
          Object? lessThanOrEqualTo = _undefined,
          Object? greaterThan = _undefined,
          Object? greaterThanOrEqualTo = _undefined}) =>
      _then(Input$DatetimeFilter(
          isNull: isNull == _undefined ? _instance.isNull : (isNull as bool?),
          equalTo:
              equalTo == _undefined ? _instance.equalTo : (equalTo as String?),
          notEqualTo: notEqualTo == _undefined
              ? _instance.notEqualTo
              : (notEqualTo as String?),
          distinctFrom: distinctFrom == _undefined
              ? _instance.distinctFrom
              : (distinctFrom as String?),
          notDistinctFrom: notDistinctFrom == _undefined
              ? _instance.notDistinctFrom
              : (notDistinctFrom as String?),
          $in: $in == _undefined ? _instance.$in : ($in as List<String>?),
          notIn:
              notIn == _undefined ? _instance.notIn : (notIn as List<String>?),
          lessThan: lessThan == _undefined
              ? _instance.lessThan
              : (lessThan as String?),
          lessThanOrEqualTo: lessThanOrEqualTo == _undefined
              ? _instance.lessThanOrEqualTo
              : (lessThanOrEqualTo as String?),
          greaterThan: greaterThan == _undefined
              ? _instance.greaterThan
              : (greaterThan as String?),
          greaterThanOrEqualTo: greaterThanOrEqualTo == _undefined
              ? _instance.greaterThanOrEqualTo
              : (greaterThanOrEqualTo as String?)));
}

class _CopyWithStubImpl$Input$DatetimeFilter<TRes>
    implements CopyWith$Input$DatetimeFilter<TRes> {
  _CopyWithStubImpl$Input$DatetimeFilter(this._res);

  TRes _res;

  call(
          {bool? isNull,
          String? equalTo,
          String? notEqualTo,
          String? distinctFrom,
          String? notDistinctFrom,
          List<String>? $in,
          List<String>? notIn,
          String? lessThan,
          String? lessThanOrEqualTo,
          String? greaterThan,
          String? greaterThanOrEqualTo}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$BooleanFilter {
  Input$BooleanFilter(
      {this.isNull,
      this.equalTo,
      this.notEqualTo,
      this.distinctFrom,
      this.notDistinctFrom,
      this.$in,
      this.notIn,
      this.lessThan,
      this.lessThanOrEqualTo,
      this.greaterThan,
      this.greaterThanOrEqualTo});

  @override
  factory Input$BooleanFilter.fromJson(Map<String, dynamic> json) =>
      _$Input$BooleanFilterFromJson(json);

  final bool? isNull;

  final bool? equalTo;

  final bool? notEqualTo;

  final bool? distinctFrom;

  final bool? notDistinctFrom;

  @JsonKey(name: 'in')
  final List<bool>? $in;

  final List<bool>? notIn;

  final bool? lessThan;

  final bool? lessThanOrEqualTo;

  final bool? greaterThan;

  final bool? greaterThanOrEqualTo;

  Map<String, dynamic> toJson() => _$Input$BooleanFilterToJson(this);
  int get hashCode {
    final l$isNull = isNull;
    final l$equalTo = equalTo;
    final l$notEqualTo = notEqualTo;
    final l$distinctFrom = distinctFrom;
    final l$notDistinctFrom = notDistinctFrom;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$lessThan = lessThan;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final l$greaterThan = greaterThan;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    return Object.hashAll([
      l$isNull,
      l$equalTo,
      l$notEqualTo,
      l$distinctFrom,
      l$notDistinctFrom,
      l$$in == null ? null : Object.hashAll(l$$in.map((v) => v)),
      l$notIn == null ? null : Object.hashAll(l$notIn.map((v) => v)),
      l$lessThan,
      l$lessThanOrEqualTo,
      l$greaterThan,
      l$greaterThanOrEqualTo
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$BooleanFilter) || runtimeType != other.runtimeType)
      return false;
    final l$isNull = isNull;
    final lOther$isNull = other.isNull;
    if (l$isNull != lOther$isNull) return false;
    final l$equalTo = equalTo;
    final lOther$equalTo = other.equalTo;
    if (l$equalTo != lOther$equalTo) return false;
    final l$notEqualTo = notEqualTo;
    final lOther$notEqualTo = other.notEqualTo;
    if (l$notEqualTo != lOther$notEqualTo) return false;
    final l$distinctFrom = distinctFrom;
    final lOther$distinctFrom = other.distinctFrom;
    if (l$distinctFrom != lOther$distinctFrom) return false;
    final l$notDistinctFrom = notDistinctFrom;
    final lOther$notDistinctFrom = other.notDistinctFrom;
    if (l$notDistinctFrom != lOther$notDistinctFrom) return false;
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) return false;
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) return false;
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }

    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) return false;
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) return false;
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }

    final l$lessThan = lessThan;
    final lOther$lessThan = other.lessThan;
    if (l$lessThan != lOther$lessThan) return false;
    final l$lessThanOrEqualTo = lessThanOrEqualTo;
    final lOther$lessThanOrEqualTo = other.lessThanOrEqualTo;
    if (l$lessThanOrEqualTo != lOther$lessThanOrEqualTo) return false;
    final l$greaterThan = greaterThan;
    final lOther$greaterThan = other.greaterThan;
    if (l$greaterThan != lOther$greaterThan) return false;
    final l$greaterThanOrEqualTo = greaterThanOrEqualTo;
    final lOther$greaterThanOrEqualTo = other.greaterThanOrEqualTo;
    if (l$greaterThanOrEqualTo != lOther$greaterThanOrEqualTo) return false;
    return true;
  }

  CopyWith$Input$BooleanFilter<Input$BooleanFilter> get copyWith =>
      CopyWith$Input$BooleanFilter(this, (i) => i);
}

abstract class CopyWith$Input$BooleanFilter<TRes> {
  factory CopyWith$Input$BooleanFilter(Input$BooleanFilter instance,
          TRes Function(Input$BooleanFilter) then) =
      _CopyWithImpl$Input$BooleanFilter;

  factory CopyWith$Input$BooleanFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanFilter;

  TRes call(
      {bool? isNull,
      bool? equalTo,
      bool? notEqualTo,
      bool? distinctFrom,
      bool? notDistinctFrom,
      List<bool>? $in,
      List<bool>? notIn,
      bool? lessThan,
      bool? lessThanOrEqualTo,
      bool? greaterThan,
      bool? greaterThanOrEqualTo});
}

class _CopyWithImpl$Input$BooleanFilter<TRes>
    implements CopyWith$Input$BooleanFilter<TRes> {
  _CopyWithImpl$Input$BooleanFilter(this._instance, this._then);

  final Input$BooleanFilter _instance;

  final TRes Function(Input$BooleanFilter) _then;

  static const _undefined = {};

  TRes call(
          {Object? isNull = _undefined,
          Object? equalTo = _undefined,
          Object? notEqualTo = _undefined,
          Object? distinctFrom = _undefined,
          Object? notDistinctFrom = _undefined,
          Object? $in = _undefined,
          Object? notIn = _undefined,
          Object? lessThan = _undefined,
          Object? lessThanOrEqualTo = _undefined,
          Object? greaterThan = _undefined,
          Object? greaterThanOrEqualTo = _undefined}) =>
      _then(Input$BooleanFilter(
          isNull: isNull == _undefined ? _instance.isNull : (isNull as bool?),
          equalTo:
              equalTo == _undefined ? _instance.equalTo : (equalTo as bool?),
          notEqualTo: notEqualTo == _undefined
              ? _instance.notEqualTo
              : (notEqualTo as bool?),
          distinctFrom: distinctFrom == _undefined
              ? _instance.distinctFrom
              : (distinctFrom as bool?),
          notDistinctFrom: notDistinctFrom == _undefined
              ? _instance.notDistinctFrom
              : (notDistinctFrom as bool?),
          $in: $in == _undefined ? _instance.$in : ($in as List<bool>?),
          notIn: notIn == _undefined ? _instance.notIn : (notIn as List<bool>?),
          lessThan:
              lessThan == _undefined ? _instance.lessThan : (lessThan as bool?),
          lessThanOrEqualTo: lessThanOrEqualTo == _undefined
              ? _instance.lessThanOrEqualTo
              : (lessThanOrEqualTo as bool?),
          greaterThan: greaterThan == _undefined
              ? _instance.greaterThan
              : (greaterThan as bool?),
          greaterThanOrEqualTo: greaterThanOrEqualTo == _undefined
              ? _instance.greaterThanOrEqualTo
              : (greaterThanOrEqualTo as bool?)));
}

class _CopyWithStubImpl$Input$BooleanFilter<TRes>
    implements CopyWith$Input$BooleanFilter<TRes> {
  _CopyWithStubImpl$Input$BooleanFilter(this._res);

  TRes _res;

  call(
          {bool? isNull,
          bool? equalTo,
          bool? notEqualTo,
          bool? distinctFrom,
          bool? notDistinctFrom,
          List<bool>? $in,
          List<bool>? notIn,
          bool? lessThan,
          bool? lessThanOrEqualTo,
          bool? greaterThan,
          bool? greaterThanOrEqualTo}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$CreateUserInput {
  Input$CreateUserInput({this.clientMutationId, required this.user});

  @override
  factory Input$CreateUserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$CreateUserInputFromJson(json);

  final String? clientMutationId;

  final Input$UserInput user;

  Map<String, dynamic> toJson() => _$Input$CreateUserInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$user = user;
    return Object.hashAll([l$clientMutationId, l$user]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$CreateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    return true;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(this, (i) => i);
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(Input$CreateUserInput instance,
          TRes Function(Input$CreateUserInput) then) =
      _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

  TRes call({String? clientMutationId, Input$UserInput? user});
  CopyWith$Input$UserInput<TRes> get user;
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(this._instance, this._then);

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined, Object? user = _undefined}) =>
      _then(Input$CreateUserInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          user: user == _undefined || user == null
              ? _instance.user
              : (user as Input$UserInput)));
  CopyWith$Input$UserInput<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Input$UserInput(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

  TRes _res;

  call({String? clientMutationId, Input$UserInput? user}) => _res;
  CopyWith$Input$UserInput<TRes> get user =>
      CopyWith$Input$UserInput.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$UserInput {
  Input$UserInput({this.id, this.createdAt, this.updatedAt, this.admin});

  @override
  factory Input$UserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UserInputFromJson(json);

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? id;

  final String? createdAt;

  final String? updatedAt;

  final bool? admin;

  Map<String, dynamic> toJson() => _$Input$UserInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$admin = admin;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt, l$admin]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$admin = admin;
    final lOther$admin = other.admin;
    if (l$admin != lOther$admin) return false;
    return true;
  }

  CopyWith$Input$UserInput<Input$UserInput> get copyWith =>
      CopyWith$Input$UserInput(this, (i) => i);
}

abstract class CopyWith$Input$UserInput<TRes> {
  factory CopyWith$Input$UserInput(
          Input$UserInput instance, TRes Function(Input$UserInput) then) =
      _CopyWithImpl$Input$UserInput;

  factory CopyWith$Input$UserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserInput;

  TRes call({UuidType? id, String? createdAt, String? updatedAt, bool? admin});
}

class _CopyWithImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithImpl$Input$UserInput(this._instance, this._then);

  final Input$UserInput _instance;

  final TRes Function(Input$UserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? admin = _undefined}) =>
      _then(Input$UserInput(
          id: id == _undefined ? _instance.id : (id as UuidType?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as String?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as String?),
          admin: admin == _undefined ? _instance.admin : (admin as bool?)));
}

class _CopyWithStubImpl$Input$UserInput<TRes>
    implements CopyWith$Input$UserInput<TRes> {
  _CopyWithStubImpl$Input$UserInput(this._res);

  TRes _res;

  call({UuidType? id, String? createdAt, String? updatedAt, bool? admin}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateUserByNodeIdInput {
  Input$UpdateUserByNodeIdInput(
      {this.clientMutationId, required this.nodeId, required this.patch});

  @override
  factory Input$UpdateUserByNodeIdInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateUserByNodeIdInputFromJson(json);

  final String? clientMutationId;

  final String nodeId;

  final Input$UserPatch patch;

  Map<String, dynamic> toJson() => _$Input$UpdateUserByNodeIdInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$nodeId = nodeId;
    final l$patch = patch;
    return Object.hashAll([l$clientMutationId, l$nodeId, l$patch]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateUserByNodeIdInput) ||
        runtimeType != other.runtimeType) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$nodeId = nodeId;
    final lOther$nodeId = other.nodeId;
    if (l$nodeId != lOther$nodeId) return false;
    final l$patch = patch;
    final lOther$patch = other.patch;
    if (l$patch != lOther$patch) return false;
    return true;
  }

  CopyWith$Input$UpdateUserByNodeIdInput<Input$UpdateUserByNodeIdInput>
      get copyWith => CopyWith$Input$UpdateUserByNodeIdInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateUserByNodeIdInput<TRes> {
  factory CopyWith$Input$UpdateUserByNodeIdInput(
          Input$UpdateUserByNodeIdInput instance,
          TRes Function(Input$UpdateUserByNodeIdInput) then) =
      _CopyWithImpl$Input$UpdateUserByNodeIdInput;

  factory CopyWith$Input$UpdateUserByNodeIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserByNodeIdInput;

  TRes call({String? clientMutationId, String? nodeId, Input$UserPatch? patch});
  CopyWith$Input$UserPatch<TRes> get patch;
}

class _CopyWithImpl$Input$UpdateUserByNodeIdInput<TRes>
    implements CopyWith$Input$UpdateUserByNodeIdInput<TRes> {
  _CopyWithImpl$Input$UpdateUserByNodeIdInput(this._instance, this._then);

  final Input$UpdateUserByNodeIdInput _instance;

  final TRes Function(Input$UpdateUserByNodeIdInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? nodeId = _undefined,
          Object? patch = _undefined}) =>
      _then(Input$UpdateUserByNodeIdInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          nodeId: nodeId == _undefined || nodeId == null
              ? _instance.nodeId
              : (nodeId as String),
          patch: patch == _undefined || patch == null
              ? _instance.patch
              : (patch as Input$UserPatch)));
  CopyWith$Input$UserPatch<TRes> get patch {
    final local$patch = _instance.patch;
    return CopyWith$Input$UserPatch(local$patch, (e) => call(patch: e));
  }
}

class _CopyWithStubImpl$Input$UpdateUserByNodeIdInput<TRes>
    implements CopyWith$Input$UpdateUserByNodeIdInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserByNodeIdInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? nodeId, Input$UserPatch? patch}) =>
      _res;
  CopyWith$Input$UserPatch<TRes> get patch =>
      CopyWith$Input$UserPatch.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$UserPatch {
  Input$UserPatch({this.id, this.createdAt, this.updatedAt, this.admin});

  @override
  factory Input$UserPatch.fromJson(Map<String, dynamic> json) =>
      _$Input$UserPatchFromJson(json);

  @JsonKey(
      fromJson: _nullable$uuidTypeFromJson, toJson: _nullable$uuidTypeToJson)
  final UuidType? id;

  final String? createdAt;

  final String? updatedAt;

  final bool? admin;

  Map<String, dynamic> toJson() => _$Input$UserPatchToJson(this);
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$admin = admin;
    return Object.hashAll([l$id, l$createdAt, l$updatedAt, l$admin]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UserPatch) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) return false;
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) return false;
    final l$admin = admin;
    final lOther$admin = other.admin;
    if (l$admin != lOther$admin) return false;
    return true;
  }

  CopyWith$Input$UserPatch<Input$UserPatch> get copyWith =>
      CopyWith$Input$UserPatch(this, (i) => i);
}

abstract class CopyWith$Input$UserPatch<TRes> {
  factory CopyWith$Input$UserPatch(
          Input$UserPatch instance, TRes Function(Input$UserPatch) then) =
      _CopyWithImpl$Input$UserPatch;

  factory CopyWith$Input$UserPatch.stub(TRes res) =
      _CopyWithStubImpl$Input$UserPatch;

  TRes call({UuidType? id, String? createdAt, String? updatedAt, bool? admin});
}

class _CopyWithImpl$Input$UserPatch<TRes>
    implements CopyWith$Input$UserPatch<TRes> {
  _CopyWithImpl$Input$UserPatch(this._instance, this._then);

  final Input$UserPatch _instance;

  final TRes Function(Input$UserPatch) _then;

  static const _undefined = {};

  TRes call(
          {Object? id = _undefined,
          Object? createdAt = _undefined,
          Object? updatedAt = _undefined,
          Object? admin = _undefined}) =>
      _then(Input$UserPatch(
          id: id == _undefined ? _instance.id : (id as UuidType?),
          createdAt: createdAt == _undefined
              ? _instance.createdAt
              : (createdAt as String?),
          updatedAt: updatedAt == _undefined
              ? _instance.updatedAt
              : (updatedAt as String?),
          admin: admin == _undefined ? _instance.admin : (admin as bool?)));
}

class _CopyWithStubImpl$Input$UserPatch<TRes>
    implements CopyWith$Input$UserPatch<TRes> {
  _CopyWithStubImpl$Input$UserPatch(this._res);

  TRes _res;

  call({UuidType? id, String? createdAt, String? updatedAt, bool? admin}) =>
      _res;
}

@JsonSerializable(explicitToJson: true)
class Input$UpdateUserInput {
  Input$UpdateUserInput(
      {this.clientMutationId, required this.patch, required this.id});

  @override
  factory Input$UpdateUserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$UpdateUserInputFromJson(json);

  final String? clientMutationId;

  final Input$UserPatch patch;

  @JsonKey(fromJson: uuidTypeFromJson, toJson: uuidTypeToJson)
  final UuidType id;

  Map<String, dynamic> toJson() => _$Input$UpdateUserInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$patch = patch;
    final l$id = id;
    return Object.hashAll([l$clientMutationId, l$patch, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$UpdateUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$patch = patch;
    final lOther$patch = other.patch;
    if (l$patch != lOther$patch) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }

  CopyWith$Input$UpdateUserInput<Input$UpdateUserInput> get copyWith =>
      CopyWith$Input$UpdateUserInput(this, (i) => i);
}

abstract class CopyWith$Input$UpdateUserInput<TRes> {
  factory CopyWith$Input$UpdateUserInput(Input$UpdateUserInput instance,
          TRes Function(Input$UpdateUserInput) then) =
      _CopyWithImpl$Input$UpdateUserInput;

  factory CopyWith$Input$UpdateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateUserInput;

  TRes call({String? clientMutationId, Input$UserPatch? patch, UuidType? id});
  CopyWith$Input$UserPatch<TRes> get patch;
}

class _CopyWithImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithImpl$Input$UpdateUserInput(this._instance, this._then);

  final Input$UpdateUserInput _instance;

  final TRes Function(Input$UpdateUserInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? patch = _undefined,
          Object? id = _undefined}) =>
      _then(Input$UpdateUserInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          patch: patch == _undefined || patch == null
              ? _instance.patch
              : (patch as Input$UserPatch),
          id: id == _undefined || id == null
              ? _instance.id
              : (id as UuidType)));
  CopyWith$Input$UserPatch<TRes> get patch {
    final local$patch = _instance.patch;
    return CopyWith$Input$UserPatch(local$patch, (e) => call(patch: e));
  }
}

class _CopyWithStubImpl$Input$UpdateUserInput<TRes>
    implements CopyWith$Input$UpdateUserInput<TRes> {
  _CopyWithStubImpl$Input$UpdateUserInput(this._res);

  TRes _res;

  call({String? clientMutationId, Input$UserPatch? patch, UuidType? id}) =>
      _res;
  CopyWith$Input$UserPatch<TRes> get patch =>
      CopyWith$Input$UserPatch.stub(_res);
}

@JsonSerializable(explicitToJson: true)
class Input$DeleteUserByNodeIdInput {
  Input$DeleteUserByNodeIdInput({this.clientMutationId, required this.nodeId});

  @override
  factory Input$DeleteUserByNodeIdInput.fromJson(Map<String, dynamic> json) =>
      _$Input$DeleteUserByNodeIdInputFromJson(json);

  final String? clientMutationId;

  final String nodeId;

  Map<String, dynamic> toJson() => _$Input$DeleteUserByNodeIdInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$nodeId = nodeId;
    return Object.hashAll([l$clientMutationId, l$nodeId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DeleteUserByNodeIdInput) ||
        runtimeType != other.runtimeType) return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$nodeId = nodeId;
    final lOther$nodeId = other.nodeId;
    if (l$nodeId != lOther$nodeId) return false;
    return true;
  }

  CopyWith$Input$DeleteUserByNodeIdInput<Input$DeleteUserByNodeIdInput>
      get copyWith => CopyWith$Input$DeleteUserByNodeIdInput(this, (i) => i);
}

abstract class CopyWith$Input$DeleteUserByNodeIdInput<TRes> {
  factory CopyWith$Input$DeleteUserByNodeIdInput(
          Input$DeleteUserByNodeIdInput instance,
          TRes Function(Input$DeleteUserByNodeIdInput) then) =
      _CopyWithImpl$Input$DeleteUserByNodeIdInput;

  factory CopyWith$Input$DeleteUserByNodeIdInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteUserByNodeIdInput;

  TRes call({String? clientMutationId, String? nodeId});
}

class _CopyWithImpl$Input$DeleteUserByNodeIdInput<TRes>
    implements CopyWith$Input$DeleteUserByNodeIdInput<TRes> {
  _CopyWithImpl$Input$DeleteUserByNodeIdInput(this._instance, this._then);

  final Input$DeleteUserByNodeIdInput _instance;

  final TRes Function(Input$DeleteUserByNodeIdInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? nodeId = _undefined}) =>
      _then(Input$DeleteUserByNodeIdInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          nodeId: nodeId == _undefined || nodeId == null
              ? _instance.nodeId
              : (nodeId as String)));
}

class _CopyWithStubImpl$Input$DeleteUserByNodeIdInput<TRes>
    implements CopyWith$Input$DeleteUserByNodeIdInput<TRes> {
  _CopyWithStubImpl$Input$DeleteUserByNodeIdInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? nodeId}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$DeleteUserInput {
  Input$DeleteUserInput({this.clientMutationId, required this.id});

  @override
  factory Input$DeleteUserInput.fromJson(Map<String, dynamic> json) =>
      _$Input$DeleteUserInputFromJson(json);

  final String? clientMutationId;

  @JsonKey(fromJson: uuidTypeFromJson, toJson: uuidTypeToJson)
  final UuidType id;

  Map<String, dynamic> toJson() => _$Input$DeleteUserInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$id = id;
    return Object.hashAll([l$clientMutationId, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$DeleteUserInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }

  CopyWith$Input$DeleteUserInput<Input$DeleteUserInput> get copyWith =>
      CopyWith$Input$DeleteUserInput(this, (i) => i);
}

abstract class CopyWith$Input$DeleteUserInput<TRes> {
  factory CopyWith$Input$DeleteUserInput(Input$DeleteUserInput instance,
          TRes Function(Input$DeleteUserInput) then) =
      _CopyWithImpl$Input$DeleteUserInput;

  factory CopyWith$Input$DeleteUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteUserInput;

  TRes call({String? clientMutationId, UuidType? id});
}

class _CopyWithImpl$Input$DeleteUserInput<TRes>
    implements CopyWith$Input$DeleteUserInput<TRes> {
  _CopyWithImpl$Input$DeleteUserInput(this._instance, this._then);

  final Input$DeleteUserInput _instance;

  final TRes Function(Input$DeleteUserInput) _then;

  static const _undefined = {};

  TRes call({Object? clientMutationId = _undefined, Object? id = _undefined}) =>
      _then(Input$DeleteUserInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          id: id == _undefined || id == null
              ? _instance.id
              : (id as UuidType)));
}

class _CopyWithStubImpl$Input$DeleteUserInput<TRes>
    implements CopyWith$Input$DeleteUserInput<TRes> {
  _CopyWithStubImpl$Input$DeleteUserInput(this._res);

  TRes _res;

  call({String? clientMutationId, UuidType? id}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$AuthenticateInput {
  Input$AuthenticateInput({this.clientMutationId, required this.token});

  @override
  factory Input$AuthenticateInput.fromJson(Map<String, dynamic> json) =>
      _$Input$AuthenticateInputFromJson(json);

  final String? clientMutationId;

  final String token;

  Map<String, dynamic> toJson() => _$Input$AuthenticateInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$token = token;
    return Object.hashAll([l$clientMutationId, l$token]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$AuthenticateInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    return true;
  }

  CopyWith$Input$AuthenticateInput<Input$AuthenticateInput> get copyWith =>
      CopyWith$Input$AuthenticateInput(this, (i) => i);
}

abstract class CopyWith$Input$AuthenticateInput<TRes> {
  factory CopyWith$Input$AuthenticateInput(Input$AuthenticateInput instance,
          TRes Function(Input$AuthenticateInput) then) =
      _CopyWithImpl$Input$AuthenticateInput;

  factory CopyWith$Input$AuthenticateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AuthenticateInput;

  TRes call({String? clientMutationId, String? token});
}

class _CopyWithImpl$Input$AuthenticateInput<TRes>
    implements CopyWith$Input$AuthenticateInput<TRes> {
  _CopyWithImpl$Input$AuthenticateInput(this._instance, this._then);

  final Input$AuthenticateInput _instance;

  final TRes Function(Input$AuthenticateInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? token = _undefined}) =>
      _then(Input$AuthenticateInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String)));
}

class _CopyWithStubImpl$Input$AuthenticateInput<TRes>
    implements CopyWith$Input$AuthenticateInput<TRes> {
  _CopyWithStubImpl$Input$AuthenticateInput(this._res);

  TRes _res;

  call({String? clientMutationId, String? token}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Input$RefreshInput {
  Input$RefreshInput(
      {this.clientMutationId,
      required this.userId,
      required this.refreshToken});

  @override
  factory Input$RefreshInput.fromJson(Map<String, dynamic> json) =>
      _$Input$RefreshInputFromJson(json);

  final String? clientMutationId;

  @JsonKey(fromJson: uuidTypeFromJson, toJson: uuidTypeToJson)
  final UuidType userId;

  final String refreshToken;

  Map<String, dynamic> toJson() => _$Input$RefreshInputToJson(this);
  int get hashCode {
    final l$clientMutationId = clientMutationId;
    final l$userId = userId;
    final l$refreshToken = refreshToken;
    return Object.hashAll([l$clientMutationId, l$userId, l$refreshToken]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Input$RefreshInput) || runtimeType != other.runtimeType)
      return false;
    final l$clientMutationId = clientMutationId;
    final lOther$clientMutationId = other.clientMutationId;
    if (l$clientMutationId != lOther$clientMutationId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) return false;
    return true;
  }

  CopyWith$Input$RefreshInput<Input$RefreshInput> get copyWith =>
      CopyWith$Input$RefreshInput(this, (i) => i);
}

abstract class CopyWith$Input$RefreshInput<TRes> {
  factory CopyWith$Input$RefreshInput(
          Input$RefreshInput instance, TRes Function(Input$RefreshInput) then) =
      _CopyWithImpl$Input$RefreshInput;

  factory CopyWith$Input$RefreshInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RefreshInput;

  TRes call({String? clientMutationId, UuidType? userId, String? refreshToken});
}

class _CopyWithImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithImpl$Input$RefreshInput(this._instance, this._then);

  final Input$RefreshInput _instance;

  final TRes Function(Input$RefreshInput) _then;

  static const _undefined = {};

  TRes call(
          {Object? clientMutationId = _undefined,
          Object? userId = _undefined,
          Object? refreshToken = _undefined}) =>
      _then(Input$RefreshInput(
          clientMutationId: clientMutationId == _undefined
              ? _instance.clientMutationId
              : (clientMutationId as String?),
          userId: userId == _undefined || userId == null
              ? _instance.userId
              : (userId as UuidType),
          refreshToken: refreshToken == _undefined || refreshToken == null
              ? _instance.refreshToken
              : (refreshToken as String)));
}

class _CopyWithStubImpl$Input$RefreshInput<TRes>
    implements CopyWith$Input$RefreshInput<TRes> {
  _CopyWithStubImpl$Input$RefreshInput(this._res);

  TRes _res;

  call({String? clientMutationId, UuidType? userId, String? refreshToken}) =>
      _res;
}

enum Enum$UsersOrderBy {
  @JsonValue('NATURAL')
  NATURAL,
  @JsonValue('ID_ASC')
  ID_ASC,
  @JsonValue('ID_DESC')
  ID_DESC,
  @JsonValue('CREATED_AT_ASC')
  CREATED_AT_ASC,
  @JsonValue('CREATED_AT_DESC')
  CREATED_AT_DESC,
  @JsonValue('UPDATED_AT_ASC')
  UPDATED_AT_ASC,
  @JsonValue('UPDATED_AT_DESC')
  UPDATED_AT_DESC,
  @JsonValue('ADMIN_ASC')
  ADMIN_ASC,
  @JsonValue('ADMIN_DESC')
  ADMIN_DESC,
  @JsonValue('PRIMARY_KEY_ASC')
  PRIMARY_KEY_ASC,
  @JsonValue('PRIMARY_KEY_DESC')
  PRIMARY_KEY_DESC,
  $unknown
}

const possibleTypesMap = {
  'Node': {'Query', 'User'}
};
UuidType? _nullable$uuidTypeFromJson(dynamic data) =>
    data == null ? null : uuidTypeFromJson(data);
dynamic _nullable$uuidTypeToJson(UuidType? data) =>
    data == null ? null : uuidTypeToJson(data);
List<UuidType> _list$uuidTypeFromJson(dynamic data) =>
    data is List ? data.map(uuidTypeFromJson).toList() : [];
dynamic _list$uuidTypeToJson(List<UuidType> data) =>
    data.map(uuidTypeToJson).toList();
List<UuidType>? _nullable$_list$uuidTypeFromJson(dynamic data) =>
    data == null ? null : _list$uuidTypeFromJson(data);
dynamic _nullable$_list$uuidTypeToJson(List<UuidType>? data) =>
    data == null ? null : _list$uuidTypeToJson(data);
