import 'package:flutter/material.dart';

// 마진 및 간격의 크기
const double xsmallGap = 5.0;
const double smallGap = 10.0;
const double mediumGap = 25.0;
const double largeGap = 50.0;
const double xlargeGap = 100.0;
const double defaultPadding = 16.0;

// 글씨 크기
const double fontSmall = 12.0;
const double fontMedium = 16.0;
const double fontLarge = 20.0;
const double fontXlarge = 26.0;

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getDrawerWidth(BuildContext context) {
  return getScreenWidth(context) * 0.6;
}
