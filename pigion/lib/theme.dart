import 'package:flutter/material.dart';

// Define your color constants
const textColor = Color(0xFFffffff);
const backgroundColor = Color(0xFF040316);
const primaryColor = Color(0xFF2d2f43);
const primaryFgColor = Color(0xFFffffff);
const secondaryColor = Color(0xFFdddbff);
const secondaryFgColor = Color(0xFF040316);
const accentColor = Color(0xFF443dff);
const accentFgColor = Color(0xFFffffff);
const pink = Color.fromARGB(255, 240, 39, 139);
const yellow = Color.fromARGB(255, 245, 207, 37);
const green = Color.fromARGB(255, 39, 243, 131);

// Define the ColorScheme
const colorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.dark == Brightness.light ? Color(0xffB3261E) : Color(0xffF2B8B5),
  onError: Brightness.dark == Brightness.light ? Color(0xffFFFFFF) : Color(0xff601410),
);

// Define the custom ThemeData
final customTheme = ThemeData.dark().copyWith(
  colorScheme: colorScheme,
  scaffoldBackgroundColor: backgroundColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: textColor),
    displayMedium: TextStyle(color: textColor),
    displaySmall: TextStyle(color: textColor),
    headlineLarge: TextStyle(color: textColor),
    headlineMedium: TextStyle(color: textColor),
    headlineSmall: TextStyle(color: textColor),
    titleLarge: TextStyle(color: textColor),
    titleMedium: TextStyle(color: textColor),
    titleSmall: TextStyle(color: textColor),
    labelLarge: TextStyle(color: textColor),
    labelMedium: TextStyle(color: primaryFgColor),
    labelSmall: TextStyle(color: textColor),
    bodyLarge: TextStyle(color: textColor),
    bodyMedium: TextStyle(color: textColor),
    bodySmall: TextStyle(color: textColor),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: accentColor,
      backgroundColor: primaryFgColor,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: accentColor,
    foregroundColor: accentFgColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: primaryFgColor,
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: primaryColor,
    selectedItemColor: accentColor,
    unselectedItemColor: secondaryColor,
  ),
  cardColor: primaryColor,
  dialogBackgroundColor: primaryColor,
  indicatorColor: accentColor,
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: secondaryColor,
    border: OutlineInputBorder(
      borderSide: BorderSide(color: accentColor),
    ),
    labelStyle: TextStyle(color: textColor),
    hintStyle: TextStyle(color: secondaryFgColor),
  ),
);