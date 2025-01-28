import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

final appTextTheme = GoogleFonts.lexendGigaTextTheme();

final appLightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: appTextTheme,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme:
        InputDecorationTheme(focusedBorder: textformfieldborder),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textStyle: TextStyle(color: Colors.black))),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white, surfaceTintColor: Colors.white));

final appDarkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: appTextTheme,
    inputDecorationTheme:
        InputDecorationTheme(focusedBorder: textformfieldborder),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textStyle: TextStyle(color: Colors.white))),
    useMaterial3: true,
    scaffoldBackgroundColor: appBgColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: appBgColor, surfaceTintColor: appBgColor));
final textformfieldborder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: kyellow));
