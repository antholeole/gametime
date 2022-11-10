import 'package:gametime/configs/base_config.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/router/router.gr.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql/client.dart';
import 'package:local_user/local_user.dart';
import 'package:local_value/local_value.dart';
import 'package:mocktail/mocktail.dart';

class TestingConfig extends Config {
  @override
  Uri get gqlEndpoint => Uri.base;
}

class MockLocalUser extends Mock implements LocalUser<UserData> {}

class MockLocalSingleton<T> extends Mock implements LocalSingleton<T> {}

class MockGQLClient extends Mock implements GQLClient {}

class FakeQueryResult<T> extends Fake implements QueryResult<T> {
  final T _data;

  FakeQueryResult(this._data);

  @override
  T get parsedData => _data;

  @override
  OperationException? get exception => null;
}

class MockAppRouter extends Mock implements AppRouter {}
