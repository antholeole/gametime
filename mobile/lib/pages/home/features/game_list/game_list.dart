import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      height: double.infinity,
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
