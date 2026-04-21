import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryPink = Color(0xFFE91E63);
  static const Color lightBg = Color(0xFFF5F5F5);
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryPink,
    colorScheme: ColorScheme.light(
      primary: primaryPink,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.5,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xFF1A1A2E),
    primaryColor: primaryPink,
    colorScheme: ColorScheme.dark(
      primary: primaryPink,
      surface: Color(0xFF16213E),
      onSurface: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1A1A2E),
      foregroundColor: Colors.white,
      elevation: 0.5,
    ),
  );
}
