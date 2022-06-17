import 'package:flutter/material.dart';
import 'package:grocery/core/constants/app_colors.dart';
import 'package:grocery/core/constants/app_defaults.dart';

class AppTheme {
  static get defaultTheme => ThemeData(
        colorSchemeSeed: AppColors.primary,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Gilroy',
            ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.primary,
            padding: const EdgeInsets.all(AppDefaults.padding),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      );
}