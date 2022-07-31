import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'login.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Variables$Mutation$Authenticate {
  Variables$Mutation$Authenticate({required this.token});

  @override
  factory Variables$Mutation$Authenticate.fromJson(Map<String, dynamic> json) =>
      _$Variables$Mutation$AuthenticateFromJson(json);

  final String token;

  Map<String, dynamic> toJson() =>
      _$Variables$Mutation$AuthenticateToJson(this);
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Variables$Mutation$Authenticate) ||
        runtimeType != other.runtimeType) return false;
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) return false;
    return true;
  }

  CopyWith$Variables$Mutation$Authenticate<Variables$Mutation$Authenticate>
      get copyWith => CopyWith$Variables$Mutation$Authenticate(this, (i) => i);
}

abstract class CopyWith$Variables$Mutation$Authenticate<TRes> {
  factory CopyWith$Variables$Mutation$Authenticate(
          Variables$Mutation$Authenticate instance,
          TRes Function(Variables$Mutation$Authenticate) then) =
      _CopyWithImpl$Variables$Mutation$Authenticate;

  factory CopyWith$Variables$Mutation$Authenticate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Authenticate;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$Authenticate<TRes>
    implements CopyWith$Variables$Mutation$Authenticate<TRes> {
  _CopyWithImpl$Variables$Mutation$Authenticate(this._instance, this._then);

  final Variables$Mutation$Authenticate _instance;

  final TRes Function(Variables$Mutation$Authenticate) _then;

  static const _undefined = {};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$Authenticate(
          token: token == _undefined || token == null
              ? _instance.token
              : (token as String)));
}

class _CopyWithStubImpl$Variables$Mutation$Authenticate<TRes>
    implements CopyWith$Variables$Mutation$Authenticate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Authenticate(this._res);

  TRes _res;

  call({String? token}) => _res;
}

@JsonSerializable(explicitToJson: true)
class Mutation$Authenticate {
  Mutation$Authenticate({this.authenticate, required this.$__typename});

  @override
  factory Mutation$Authenticate.fromJson(Map<String, dynamic> json) =>
      _$Mutation$AuthenticateFromJson(json);

  final Mutation$Authenticate$authenticate? authenticate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$Mutation$AuthenticateToJson(this);
  int get hashCode {
    final l$authenticate = authenticate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$authenticate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$Authenticate) || runtimeType != other.runtimeType)
      return false;
    final l$authenticate = authenticate;
    final lOther$authenticate = other.authenticate;
    if (l$authenticate != lOther$authenticate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Authenticate on Mutation$Authenticate {
  CopyWith$Mutation$Authenticate<Mutation$Authenticate> get copyWith =>
      CopyWith$Mutation$Authenticate(this, (i) => i);
}

abstract class CopyWith$Mutation$Authenticate<TRes> {
  factory CopyWith$Mutation$Authenticate(Mutation$Authenticate instance,
          TRes Function(Mutation$Authenticate) then) =
      _CopyWithImpl$Mutation$Authenticate;

  factory CopyWith$Mutation$Authenticate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Authenticate;

  TRes call(
      {Mutation$Authenticate$authenticate? authenticate, String? $__typename});
  CopyWith$Mutation$Authenticate$authenticate<TRes> get authenticate;
}

class _CopyWithImpl$Mutation$Authenticate<TRes>
    implements CopyWith$Mutation$Authenticate<TRes> {
  _CopyWithImpl$Mutation$Authenticate(this._instance, this._then);

  final Mutation$Authenticate _instance;

  final TRes Function(Mutation$Authenticate) _then;

  static const _undefined = {};

  TRes call(
          {Object? authenticate = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$Authenticate(
          authenticate: authenticate == _undefined
              ? _instance.authenticate
              : (authenticate as Mutation$Authenticate$authenticate?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
  CopyWith$Mutation$Authenticate$authenticate<TRes> get authenticate {
    final local$authenticate = _instance.authenticate;
    return local$authenticate == null
        ? CopyWith$Mutation$Authenticate$authenticate.stub(_then(_instance))
        : CopyWith$Mutation$Authenticate$authenticate(
            local$authenticate, (e) => call(authenticate: e));
  }
}

class _CopyWithStubImpl$Mutation$Authenticate<TRes>
    implements CopyWith$Mutation$Authenticate<TRes> {
  _CopyWithStubImpl$Mutation$Authenticate(this._res);

  TRes _res;

  call(
          {Mutation$Authenticate$authenticate? authenticate,
          String? $__typename}) =>
      _res;
  CopyWith$Mutation$Authenticate$authenticate<TRes> get authenticate =>
      CopyWith$Mutation$Authenticate$authenticate.stub(_res);
}

const documentNodeMutationAuthenticate = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'Authenticate'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'token')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'authenticate'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'token'),
                  value: VariableNode(name: NameNode(value: 'token')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'accessToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'refreshToken'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
Mutation$Authenticate _parserFn$Mutation$Authenticate(
        Map<String, dynamic> data) =>
    Mutation$Authenticate.fromJson(data);
typedef OnMutationCompleted$Mutation$Authenticate = FutureOr<void> Function(
    dynamic, Mutation$Authenticate?);

class Options$Mutation$Authenticate
    extends graphql.MutationOptions<Mutation$Authenticate> {
  Options$Mutation$Authenticate(
      {String? operationName,
      required Variables$Mutation$Authenticate variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$Authenticate? onCompleted,
      graphql.OnMutationUpdate<Mutation$Authenticate>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$Authenticate(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAuthenticate,
            parserFn: _parserFn$Mutation$Authenticate);

  final OnMutationCompleted$Mutation$Authenticate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptions$Mutation$Authenticate
    extends graphql.WatchQueryOptions<Mutation$Authenticate> {
  WatchOptions$Mutation$Authenticate(
      {String? operationName,
      required Variables$Mutation$Authenticate variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: documentNodeMutationAuthenticate,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFn$Mutation$Authenticate);
}

extension ClientExtension$Mutation$Authenticate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Authenticate>> mutate$Authenticate(
          Options$Mutation$Authenticate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Authenticate> watchMutation$Authenticate(
          WatchOptions$Mutation$Authenticate options) =>
      this.watchMutation(options);
}

class Mutation$Authenticate$HookResult {
  Mutation$Authenticate$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$Authenticate runMutation;

  final graphql.QueryResult<Mutation$Authenticate> result;
}

Mutation$Authenticate$HookResult useMutation$Authenticate(
    [WidgetOptions$Mutation$Authenticate? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$Authenticate());
  return Mutation$Authenticate$HookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Authenticate> useWatchMutation$Authenticate(
        WatchOptions$Mutation$Authenticate options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Authenticate
    extends graphql.MutationOptions<Mutation$Authenticate> {
  WidgetOptions$Mutation$Authenticate(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompleted$Mutation$Authenticate? onCompleted,
      graphql.OnMutationUpdate<Mutation$Authenticate>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$Authenticate(data)),
            update: update,
            onError: onError,
            document: documentNodeMutationAuthenticate,
            parserFn: _parserFn$Mutation$Authenticate);

  final OnMutationCompleted$Mutation$Authenticate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutation$Mutation$Authenticate
    = graphql.MultiSourceResult<Mutation$Authenticate>
        Function(Variables$Mutation$Authenticate, {Object? optimisticResult});
typedef Builder$Mutation$Authenticate = widgets.Widget Function(
    RunMutation$Mutation$Authenticate,
    graphql.QueryResult<Mutation$Authenticate>?);

class Mutation$Authenticate$Widget
    extends graphql_flutter.Mutation<Mutation$Authenticate> {
  Mutation$Authenticate$Widget(
      {widgets.Key? key,
      WidgetOptions$Mutation$Authenticate? options,
      required Builder$Mutation$Authenticate builder})
      : super(
            key: key,
            options: options ?? WidgetOptions$Mutation$Authenticate(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class Mutation$Authenticate$authenticate {
  Mutation$Authenticate$authenticate(
      {this.accessToken, this.refreshToken, required this.$__typename});

  @override
  factory Mutation$Authenticate$authenticate.fromJson(
          Map<String, dynamic> json) =>
      _$Mutation$Authenticate$authenticateFromJson(json);

  final String? accessToken;

  final String? refreshToken;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$Mutation$Authenticate$authenticateToJson(this);
  int get hashCode {
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([l$accessToken, l$refreshToken, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is Mutation$Authenticate$authenticate) ||
        runtimeType != other.runtimeType) return false;
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) return false;
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtension$Mutation$Authenticate$authenticate
    on Mutation$Authenticate$authenticate {
  CopyWith$Mutation$Authenticate$authenticate<
          Mutation$Authenticate$authenticate>
      get copyWith =>
          CopyWith$Mutation$Authenticate$authenticate(this, (i) => i);
}

abstract class CopyWith$Mutation$Authenticate$authenticate<TRes> {
  factory CopyWith$Mutation$Authenticate$authenticate(
          Mutation$Authenticate$authenticate instance,
          TRes Function(Mutation$Authenticate$authenticate) then) =
      _CopyWithImpl$Mutation$Authenticate$authenticate;

  factory CopyWith$Mutation$Authenticate$authenticate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Authenticate$authenticate;

  TRes call({String? accessToken, String? refreshToken, String? $__typename});
}

class _CopyWithImpl$Mutation$Authenticate$authenticate<TRes>
    implements CopyWith$Mutation$Authenticate$authenticate<TRes> {
  _CopyWithImpl$Mutation$Authenticate$authenticate(this._instance, this._then);

  final Mutation$Authenticate$authenticate _instance;

  final TRes Function(Mutation$Authenticate$authenticate) _then;

  static const _undefined = {};

  TRes call(
          {Object? accessToken = _undefined,
          Object? refreshToken = _undefined,
          Object? $__typename = _undefined}) =>
      _then(Mutation$Authenticate$authenticate(
          accessToken: accessToken == _undefined
              ? _instance.accessToken
              : (accessToken as String?),
          refreshToken: refreshToken == _undefined
              ? _instance.refreshToken
              : (refreshToken as String?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$Authenticate$authenticate<TRes>
    implements CopyWith$Mutation$Authenticate$authenticate<TRes> {
  _CopyWithStubImpl$Mutation$Authenticate$authenticate(this._res);

  TRes _res;

  call({String? accessToken, String? refreshToken, String? $__typename}) =>
      _res;
}
