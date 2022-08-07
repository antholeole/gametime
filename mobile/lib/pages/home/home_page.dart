import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gametime/data/user_data.dart';
import 'package:gametime/pages/home/features/game_list/game_list.dart';
import 'package:gametime/register_services.dart';
import 'package:local_user/local_user.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  final UserData userData;

  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return Provider.value(
      value: userData,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GameList(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: getIt<LocalUser<UserData>>().logOut,
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
