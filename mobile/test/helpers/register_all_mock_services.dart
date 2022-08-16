import 'package:gametime/configs/base_config.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/register_services.dart';
import 'package:gql_client/gql_client.dart';
import 'package:local_user/local_user.dart';

import 'mocks.dart';

void registerAllMockServices() {
  getIt.allowReassignment = true;

  getIt.registerSingleton<Config>(TestingConfig());
  getIt.registerSingleton<LocalUser<UserData>>(MockLocalUser());
  getIt.registerSingleton<GQLClient>(MockGQLClient());
}
