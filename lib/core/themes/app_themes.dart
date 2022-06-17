import 'package:flutter/material.dart';
import 'package:grocery/core/constants/app_colors.dart';
import 'package:grocery/core/constants/app_defaults.dart';

class AppTheme {
  static get defaultTheme => ThemeData(
        colorSchemeSeed: AppColors.primary,
        fontFamily: "Gilroy",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.placeholder),
          bodyMedium: TextStyle(color: AppColors.placeholder),
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
