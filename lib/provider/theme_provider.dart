import 'package:flutter/material.dart';

class Themes {
  static final temaClaro = ThemeData(
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFfcbc3d),
    ),
    iconTheme: const IconThemeData(color: Colors.white, size: 40),
    textTheme: TextTheme(
      titleMedium: const TextStyle(color: Colors.white),
      labelSmall: TextStyle(
        fontSize: 13,
        color: Colors.black.withOpacity(0.4),
      ),
      bodyLarge: const TextStyle(
        color: Color(0xFF868692),
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 3,
          color: Colors.transparent,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: Colors.transparent,
        ),
      ),
    ),
    cardColor: const Color(0xFF5acbb8),
    disabledColor: const Color(0xFFF1EDE7),
    indicatorColor: const Color(0xFFFC6939),
  );
}
