import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const FontWeight _fontWeightBold = FontWeight.w700;
  static const FontWeight _fontWeightSemiBold = FontWeight.w600;
  static const FontWeight _fontWeightMedium = FontWeight.w500;
  static const FontWeight _fontWeightRegular = FontWeight.w400;

  static const TextStyle displayLarge = TextStyle(
    fontWeight: _fontWeightBold,
    fontSize: 48,
  );

  static const TextStyle displayMedium = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 40,
  );

  static const TextStyle displaySmall = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 32,
  );

  static const TextStyle headlineLarge = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 24,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 20,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 16,
  );

  static const TextStyle titleLarge = TextStyle(
    fontWeight: _fontWeightSemiBold,
    fontSize: 18,
  );

  static const TextStyle titleMedium = TextStyle(
    fontWeight: _fontWeightMedium,
    fontSize: 16,
  );

  static const TextStyle titleSmall = TextStyle(
    fontWeight: _fontWeightMedium,
    fontSize: 14,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontWeight: _fontWeightRegular,
    fontSize: 14,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontWeight: _fontWeightRegular,
    fontSize: 12,
  );
  static const TextStyle bodySmall = TextStyle(
    fontWeight: _fontWeightRegular,
    fontSize: 10,
  );
}
