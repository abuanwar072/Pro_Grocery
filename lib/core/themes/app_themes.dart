import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class AppTheme {
  static get defaultTheme => ThemeData(
        colorSchemeSeed: AppColors.primary,
        fontFamily: "Gilroy",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.placeholder),
          bodyMedium: TextStyle(color: AppColors.placeholder),
        ),
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Gilroy",
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
          ),
        ),
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
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(AppDefaults.padding),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: AppDefaults.borderRadius,
            ),
            textStyle: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: AppColors.textInputBackground,
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: UnderlineInputBorder(
            borderSide: BorderSide(width: 0.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 0.1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 0.1),
          ),
        ),
      );
}
