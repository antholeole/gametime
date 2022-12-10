import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
    );
  }
}
