import 'package:flutter/material.dart';

ThemeData get theme {
  return ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 48.0,
        fontWeight: FontWeight.w600,
        height: 0.8,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
        ),
        overlayColor: MaterialStatePropertyAll(Colors.black12),
        minimumSize: MaterialStatePropertyAll(Size(200, 60)),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
