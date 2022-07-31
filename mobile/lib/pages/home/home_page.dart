import 'package:flutter/material.dart';
import 'package:gametime/pages/home/features/game_list/game_list.dart';
import 'package:gametime/register_services.dart';
import 'package:local_user/local_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const GameList(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: getIt<LocalUser>().logOut,
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
