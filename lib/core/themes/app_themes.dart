import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class AppTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
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
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Gilroy',
          ),
        ),
      ),
      inputDecorationTheme: defaultInputDecorationTheme,
    );
  }

  /* <---- Input Decorations Theme -----> */
  static const defaultInputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.textInputBackground,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: OutlineInputBorder(
      borderSide: BorderSide(width: 0.1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.1),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    suffixIconColor: AppColors.placeholder,
  );

  static const secondaryInputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.textInputBackground,
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
  );

  static final otpInputDecorationTheme = InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.1),
      borderRadius: BorderRadius.circular(25),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.1),
      borderRadius: BorderRadius.circular(25),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 0.1),
      borderRadius: BorderRadius.circular(25),
    ),
  );
}
