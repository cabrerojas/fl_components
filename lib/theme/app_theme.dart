import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color secondary = Colors.greenAccent;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: primary,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 1),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),

      // FloatingActionButton

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 10),

      // ElevatedButton Theme

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: AppTheme.primary,
            shape: const StadiumBorder(),
            elevation: 9),
      ));
}
