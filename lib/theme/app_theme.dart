import 'package:flutter/material.dart';

class AppThemeData {
  // Colors: Main Colors
  static const Color primaryColor = Color.fromRGBO(1, 159, 171, 1.0);
  static const Color secondaryColor = Color.fromRGBO(18, 18, 18, 1.0);

  // Colors: Text
  static const textPrimary = primaryColor;
  static const textWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const textGreyDark = Color.fromRGBO(147, 147, 147, 1.0);
  static const textGreyLight = Color.fromRGBO(205, 205, 205, 1.0);
  static const textCursor = Color.fromRGBO(61, 61, 61, 1.0);

  // Colors: Buttons and Icons
  static const buttonPrimary = primaryColor;
  static const buttonSecondary = Color.fromRGBO(50, 50, 50, 1.0);
  static const iconPrimary = primaryColor;
  static const iconSecondary = Color.fromRGBO(255, 255, 255, 1.0);

  // Colors: Background and Cards
  static const backgroundBlack = Color.fromRGBO(18, 18, 18, 1.0);
  static const backgroundGrey = Color.fromRGBO(25, 25, 25, 1.0);
  static const cardGrey = Color.fromRGBO(15, 15, 15, 1.0);
  static const tooltip = Color.fromRGBO(33, 33, 33, 1.0);

  // Colors: Opacity
  static const opacityPrimary = Color.fromRGBO(1, 159, 171, 1.0);
  static const opacitySecondary = Color.fromRGBO(0, 0, 0, 0.5019607843137255);

  // Radius
  static const double cornerRadiusCard = 40.0;
  static const double cornerRadiusCardButton = 30.0;

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    primaryColor: primaryColor,
    backgroundColor: backgroundBlack,
    scaffoldBackgroundColor: secondaryColor,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: iconPrimary),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: textCursor,
      selectionHandleColor: textPrimary,
    ),
    tooltipTheme: const TooltipThemeData(
      decoration: BoxDecoration(
        color: tooltip,
        border: Border(
          top: BorderSide(color: textGreyDark, width: 1.0),
          left: BorderSide(color: textGreyDark, width: 1.0),
          right: BorderSide(color: textGreyDark, width: 1.0),
          bottom: BorderSide(color: textGreyDark, width: 1.0),
        ),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      textStyle: TextStyle(color: textWhite),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: primaryColor,
      contentTextStyle: TextStyle(color: textWhite),
      actionTextColor: textWhite,
    ),
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontSize: 54.0,
        fontWeight: FontWeight.w700,
        color: textWhite,
      ),
      displaySmall: TextStyle(
          fontSize: 42.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textWhite),
      headlineSmall: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.w700,
          color: AppThemeData.textPrimary),
      titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textGreyDark),
      titleMedium: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textWhite),
      titleSmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: AppThemeData.textGreyLight),
      labelLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: AppThemeData.textGreyDark),
      labelMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
          color: AppThemeData.textWhite),
    ),
  );
}
