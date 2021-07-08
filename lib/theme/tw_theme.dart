import 'package:flutter/material.dart';

class TWTheme {
  static Color get darkGreen => Color(0xff084348);
  static Color get lightGreen => Color(0xff015c67);

  static ThemeData themeData = ThemeData(
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
