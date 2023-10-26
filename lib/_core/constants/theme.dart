import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

MaterialColor primaryWhite = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

ThemeData theme() {
  return ThemeData(appBarTheme: appBarTheme(), fontFamily: 'carrot');
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: fontLarge, fontFamily: 'carrot'),
    centerTitle: true,
    backgroundColor: kCarrotColor,
    elevation: 1,
  );
}
