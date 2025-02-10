import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

final appTextTheme = GoogleFonts.geologicaTextTheme();

final appLightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: kyellow,
    primaryColorLight: kyellow,
    textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: kyellow,
        cursorColor: kyellow,
        selectionColor: kyellow.withOpacity(0.5)),
    textTheme: appTextTheme,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: textformfieldborder,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textStyle: const TextStyle(color: Colors.black))),
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white));

final appDarkTheme = ThemeData(
    primaryColor: kyellow,
    brightness: Brightness.dark,
    textTheme: appTextTheme,
    textSelectionTheme: TextSelectionThemeData(
        selectionHandleColor: kyellow,
        cursorColor: kyellow,
        selectionColor: kyellow.withOpacity(0.5)),
    inputDecorationTheme:
        InputDecorationTheme(focusedBorder: textformfieldborder),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            textStyle: const TextStyle(color: Colors.white))),
    useMaterial3: true,
    scaffoldBackgroundColor: kbgcolor,
    appBarTheme: const AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: kbgcolor,
        surfaceTintColor: kbgcolor));

final textformfieldborder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: kyellow));
