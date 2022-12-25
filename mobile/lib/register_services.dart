import 'package:gametime/data/user_data.dart';
import 'package:get_it/get_it.dart';
import 'package:gametime/configs/base_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gql_client/gql_client.dart';
import 'package:local_value/local_value.dart';

import 'package:local_user/local_user.dart';

final getIt = GetIt.I;

void registerBasicServices(GetIt getIt, Config config) {
  getIt.registerSingleton<Config>(config);
  getIt.registerSingleton<GoogleSignIn>(GoogleSignIn.standard());
  getIt.registerSingleton<LocalUser<UserData>>(
    LocalUser<UserData>(
      userData: LocalSingleton<UserData>(
        id: 'local_user_data',
        documentType: DocumentType.document,
        fromJson: UserData.fromJson,
        toJson: (json) => json.toJson(),
      ),
    ),
  );

  getIt.registerSingleton<GQLClient>(buildGqlClient(
    localUser: getIt<LocalUser<UserData>>(),
    authenticated: false,
    endpoint: config.gqlEndpoint,
  ));
}

void registerAuthedServices(Config config, GetIt getIt) {
  getIt.registerSingleton<GQLClient>(buildGqlClient(
    localUser: getIt<LocalUser<UserData>>(),
    authenticated: true,
    endpoint: config.gqlEndpoint,
  ));
}
