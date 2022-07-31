import 'package:get_it/get_it.dart';
import 'package:gametime/configs/base_config.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql/client.dart';

import 'package:local_user/local_user.dart';

final getIt = GetIt.I;

void registerBasicServices(GetIt getIt, Config config) {
  getIt.registerSingleton<Config>(config);
  getIt.registerSingleton(LocalUser());

  getIt.registerSingleton<GraphQLClient>(buildGqlClient(
    localUser: getIt<LocalUser>(),
    authenticated: false,
    endpoint: config.gqlEndpoint,
  ));
}

void registerAuthedServices(Config config, GetIt getIt) {
  getIt.registerSingleton<GraphQLClient>(buildGqlClient(
    localUser: getIt<LocalUser>(),
    authenticated: true,
    endpoint: config.gqlEndpoint,
  ));
}
