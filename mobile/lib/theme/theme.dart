import 'package:flutter/material.dart';

const Color primaryColor = Color.fromARGB(255, 255, 0, 0);

final ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
  appBarTheme: const AppBarTheme(
      color: Colors.white, iconTheme: IconThemeData(color: Colors.black87)),
);
