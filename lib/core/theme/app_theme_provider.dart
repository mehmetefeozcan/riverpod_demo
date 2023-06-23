import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  int themeIndex = 0;

  setTheme(int value) {
    themeIndex = value;
    notifyListeners();
  }

  changeTheme() {
    themeIndex++;
    setTheme(themeIndex);

    if (themeIndex == 3) {
      themeIndex = 0;
    }
  }
}

final appThemeProvider =
    ChangeNotifierProvider<ThemeProvider>((ref) => ThemeProvider());
