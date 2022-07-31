import 'package:flutter/material.dart';
import 'package:gametime/theme/logo.dart';
import 'package:gametime/theme/text.dart';

class SplashPage extends StatelessWidget {
  final Exception? exception;

  const SplashPage({Key? key, this.exception}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          if (exception != null)
            Text(
              exception.toString(),
              style: errorText,
            ),
          const Logo(),
        ],
      ),
    );
  }
}
