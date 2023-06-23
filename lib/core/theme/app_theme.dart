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
      fontFamily: 'SourceSansPro',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        onPrimary: Colors.white,
        primary: Colors.black,
        secondary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.white,
        onBackground: Colors.white,
        surface: Colors.orange,
        onSurface: Colors.black,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
      ),
    );
  }

  // Dark Theme
  ThemeData setDarkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'SourceSansPro',
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
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
      ),
    );
  }

  // Blue Theme
  ThemeData setGreenTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'SourceSansPro',
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
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
        headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        titleSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
      ),
    );
  }
}
