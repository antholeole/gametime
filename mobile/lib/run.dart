import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametime/configs/base_config.dart';
import 'package:gametime/register_services.dart';
import 'package:gametime/router/router.gr.dart';
import 'package:gametime/router/user_state_observer.dart';
import 'package:gametime/theme/theme.dart';
import 'package:gql_client/gql_client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:toaster_next/toaster/toaster_interface.dart';

Future<void> initalize(Config config) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  registerBasicServices(getIt, config);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: theme,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => GraphQLProvider(
          client: getIt<GQLClient>().shadowListenableClient,
          child: Toaster.mount(child: child!)),
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [UserStateObserver(_appRouter)],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
