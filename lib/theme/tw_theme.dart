import 'package:flutter/material.dart';

class TWTheme {
  static Color get darkGreen => Color(0xff084348);
  static Color get lightGreen => Color(0xff015c67);
  static Color get twOrange => Color(0xFFFB9D2B);
    static Color get lightOrange => Color(0xFFffce5e);
    static Color get twGreen => Color(0xff015c67);
  static const Color kMainThemeColor = Color(0xff027887);

  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      headline2: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(color: Color(0xff084348)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff084348)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Color(0xff084348), width: 2),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff084348), width: 2),
      ),
    ),
  );
}
