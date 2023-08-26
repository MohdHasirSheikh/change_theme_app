import 'package:flutter/material.dart';

class Themes{
  /// Light Theme .....
  final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
    ),
  );
  /// Dark Theme ......
  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.blueGrey[200],
      brightness:Brightness.dark,
    primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
      ),
  );
}