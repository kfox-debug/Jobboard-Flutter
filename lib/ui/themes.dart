import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: const Color(0xFF0A73C4), // Replace with client-specific colors

    scaffoldBackgroundColor: const Color(0xFFF4F4F4),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontFamily: 'CustomFont', fontWeight: FontWeight.bold, fontSize: 24),
      bodyLarge: TextStyle(fontFamily: 'CustomFont', fontSize: 16),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFFE94D65), // Client-specific button color
      textTheme: ButtonTextTheme.primary,
    ),
  );
}