import 'package:flutter/material.dart';

final dartTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  primarySwatch: Colors.yellow,
  dividerColor: Colors.white,
  useMaterial3: true,
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.yellow,
  ),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  ),
);
