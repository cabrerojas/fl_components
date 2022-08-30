import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: primary,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 1));
}
