import 'package:flutter/material.dart';

@immutable
class AppTheme {
  const AppTheme();

  //Return Selected Theme
  ThemeData themeData(BuildContext context, int index) {
    switch (index) {
      case 0:
        return setLightTheme(context);
      case 1:
        return setDarkTheme(context);
      case 2:
        return setGreenTheme(context);
      default:
        return setLightTheme(context);
    }
  }

  // Light Theme
  ThemeData setLightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xffe6bb22),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        onPrimary: Colors.white,
        primary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.orange,
        onSurface: Colors.black,
      ),
    );
  }

  // Dark Theme
  ThemeData setDarkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xff222566),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        onPrimary: Colors.white,
        primary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Color(0xff222566),
        onSurface: Colors.black,
      ),
    );
  }

  // Blue Theme
  ThemeData setGreenTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: const Color(0xff2cfc03),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        onPrimary: Colors.white,
        primary: Colors.white,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Color(0xff2cfc03),
        onSurface: Colors.black,
      ),
    );
  }
}
