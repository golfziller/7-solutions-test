import 'dart:math';

import 'package:flutter/material.dart';

const double space4 = 4.0;
const double space8 = 8.0;
const double space12 = 12.0;
const double space16 = 16.0;
const double space24 = 24.0;
const double space32 = 32.0;

const Widget vSpace4 = SizedBox(height: space4);
const Widget vSpace8 = SizedBox(height: space8);
const Widget vSpace12 = SizedBox(height: space12);
const Widget vSpace16 = SizedBox(height: space16);
const Widget vSpace24 = SizedBox(height: space24);
const Widget vSpace32 = SizedBox(height: space32);

const Widget hSpace4 = SizedBox(width: space4);
const Widget hSpace8 = SizedBox(width: space8);
const Widget hSpace12 = SizedBox(width: space12);
const Widget hSpace16 = SizedBox(width: space16);
const Widget hSpace24 = SizedBox(width: space24);
const Widget hSpace32 = SizedBox(width: space32);

Widget spacedDivider = const Column(
  children: <Widget>[
    vSpace12,
    Divider(color: Colors.blueGrey, height: 5.0),
    vSpace12,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

double screenHeightFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
  double max = 3000,
}) =>
    min((screenHeight(context) - offsetBy) / dividedBy, max);

double screenWidthFraction(
  BuildContext context, {
  int dividedBy = 1,
  double offsetBy = 0,
  double max = 3000,
}) =>
    min((screenWidth(context) - offsetBy) / dividedBy, max);

double halfScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 2);

double thirdScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 3);

double quarterScreenWidth(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 4);

double getResponsiveHorizontalSpaceMedium(BuildContext context) =>
    screenWidthFraction(context, dividedBy: 10);
double getResponsiveSmallFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 14, max: 15);

double getResponsiveMediumFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 16, max: 17);

double getResponsiveLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 21, max: 31);

double getResponsiveExtraLargeFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 25);

double getResponsiveMassiveFontSize(BuildContext context) =>
    getResponsiveFontSize(context, fontSize: 30);

double getResponsiveFontSize(
  BuildContext context, {
  double? fontSize,
  double? max,
}) {
  max ??= 100;

  var responsiveSize = min(
    screenWidthFraction(context, dividedBy: 10) * ((fontSize ?? 100) / 100),
    max,
  );

  return responsiveSize;
}
