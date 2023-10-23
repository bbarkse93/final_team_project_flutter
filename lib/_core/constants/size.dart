import 'package:flutter/material.dart';

const double xsmallGap = 5.0;
const double smallGap = 10.0;
const double mediumGap = 25.0;
const double largeGap = 50.0;
const double xlargeGap = 100.0;

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getDrawerWidth(BuildContext context) {
  return getScreenWidth(context) * 0.6;
}
