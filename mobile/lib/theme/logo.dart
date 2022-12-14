import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sports Video',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
