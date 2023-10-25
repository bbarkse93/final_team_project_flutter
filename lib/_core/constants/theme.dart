import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(appBarTheme: appBarTheme(), fontFamily: 'carrot');
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'carrot'),
    centerTitle: true,
    backgroundColor: Color.fromRGBO(255, 126, 00, 1),
    elevation: 1,
  );
}
