import 'package:flutter/material.dart';
import 'package:testtt/theme%20pref.dart';

import 'package:flutter/material.dart';

final lighttheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
  brightness: Brightness.light,
  primary: Color(0xFF030328),
  // primary: Color(0xFF030328),
  onPrimary: Colors.white,
  secondary: Color(0xFFf37b67),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),

  onError: Color(0xFFFFFFFF),
  background: Color(0xFFFEFFFF),
  onBackground: Color(0xFF3b3b3b),
  surface: Color(0xFFFEFFFF),
  onSurface: Color(0xFF3b3b3b),
      tertiary: Colors.red.shade200
    ),
    buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
            primary: Colors.black,
            secondary: Color(0xff0f1b33),
            tertiary: Colors.black
        )
    ),
  iconTheme: IconThemeData(
    color: Colors.black
  ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,

    )
);

final darktheme= ThemeData(
scaffoldBackgroundColor:Colors.black ,
   colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.black,
      tertiary: Colors.grey,
      onPrimary: Color(0xFF002E69),
      secondary: Color(0xFFBBC6E4),
      onSecondary: Color(0xFF253048),
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      background: Color(0xFF1B1B1F),
      onBackground: Color(0xFFE3E2E6),
      surface: Color(0xFF1B1B1F),
     onSurface: Color(0xFF3b3b3b),
    ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      secondary: Color(0xff0f1b33),
      tertiary: Colors.white54
    )
  ),
    iconTheme: IconThemeData(
    color: Colors.white
),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black
  )
);

class ThemeModel extends ChangeNotifier {
  late bool _isDark;
  late ThemePreferences _preferences;
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }
//Switching themes in the flutter apps - Flutterant
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}