import 'package:flutter/material.dart';


import 'app_color.dart';
import 'app_text_style.dart';

class AppTheme {
  static final AppTextStyle _textStyle = AppTextStyle.instance;

  static ThemeData light = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.primaryColor,
    cardColor: AppColor.primaryColor,
    //hintColor: AppColor.hintTxtColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor,
    ),
    // drawerTheme: DrawerThemeData(
    //     backgroundColor: AppColor.primaryColor
    // ),
    iconTheme: IconThemeData(
      color: AppColor.grey,
    ),
    // primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge,
      displayMedium: _textStyle.displayMedium,
      displaySmall: _textStyle.displaySmall,
      headlineLarge: _textStyle.headlineLarge,
      headlineMedium: _textStyle.headlineMedium,
      headlineSmall: _textStyle.headlineSmall,
      titleLarge: _textStyle.titleLarge,
      titleSmall: _textStyle.titleSmall,
      titleMedium: _textStyle.titleMedium,
      labelLarge: _textStyle.labelLarge,
      labelMedium: _textStyle.labelMedium,
      labelSmall: _textStyle.labelSmall,
      bodyLarge: _textStyle.bodyLarge,
      bodyMedium: _textStyle.bodyMedium,
      bodySmall: _textStyle.bodySmall,
    ), colorScheme: ColorScheme(background: AppColor.primaryColor, primary:AppColor.primaryColor,
      brightness: Brightness.light, onPrimary: AppColor.primaryColor, secondary: AppColor.secondaryColor, onSecondary: AppColor.secondaryColor,
      error: AppColor.redDispute, onError: AppColor.redDispute, onBackground: AppColor.primaryColor, surface: AppColor.primaryColor, onSurface: AppColor.primaryColor),
  );

  static ThemeData dark = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.primaryColorDark,
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColorDark,
    ),
    cardColor: AppColor.primaryColorDark,
    // primarySwatch: AppColor.primarySwatch,
    drawerTheme: DrawerThemeData(
        backgroundColor: AppColor.primaryColorDark
    ),
    //hintColor: AppColor.hintTxtColor,
    iconTheme: IconThemeData(
        color: AppColor.primaryColor
    ),
    textTheme: TextTheme(
      displayLarge: _textStyle.displayLarge.copyWith(color: AppColor.primaryColor),
      displayMedium: _textStyle.displayMedium.copyWith(color: AppColor.primaryColor),
      displaySmall: _textStyle.displaySmall.copyWith(color: AppColor.primaryColor),
      headlineLarge: _textStyle.headlineLarge.copyWith(color: AppColor.primaryColor),
      headlineMedium: _textStyle.headlineMedium.copyWith(color: AppColor.primaryColor),
      headlineSmall: _textStyle.headlineSmall.copyWith(color: AppColor.primaryColor),
      titleLarge: _textStyle.titleLarge.copyWith(color: AppColor.primaryColor),
      titleSmall: _textStyle.titleSmall.copyWith(color: AppColor.primaryColor),
      titleMedium: _textStyle.titleMedium.copyWith(color: AppColor.primaryColor),
      labelLarge: _textStyle.labelLarge.copyWith(color: AppColor.primaryColor),
      labelMedium: _textStyle.labelMedium.copyWith(color: AppColor.primaryColor),
      labelSmall: _textStyle.labelSmall.copyWith(color: AppColor.primaryColor),
      bodyLarge: _textStyle.bodyLarge.copyWith(color: AppColor.primaryColor),
      bodyMedium: _textStyle.bodyMedium.copyWith(color: AppColor.primaryColor),
      bodySmall: _textStyle.bodySmall.copyWith(color: AppColor.primaryColor),

    ), colorScheme: ColorScheme(background: AppColor.primaryColorDark, primary:AppColor.primaryColorDark,
      brightness: Brightness.dark, onPrimary: AppColor.primaryColorDark, secondary: AppColor.secondaryColor, onSecondary: AppColor.secondaryColor,
      error: AppColor.redDispute, onError: AppColor.redDispute, onBackground: AppColor.primaryColorDark, surface: AppColor.primaryColorDark,
      onSurface: AppColor.primaryColorDark),
  );
}
