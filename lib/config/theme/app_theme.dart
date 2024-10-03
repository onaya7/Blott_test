import 'package:blott/config/theme/custom_theme/appbar_theme.dart';
import 'package:blott/config/theme/custom_theme/checkbox_theme.dart';
import 'package:blott/config/theme/custom_theme/scrollbar_theme.dart';
import 'package:blott/config/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  //Light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scrollbarTheme: TScrollBarTheme.lightScrollBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    textTheme: TTextTheme.lightTextTheme,
  );

  //Dark theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scrollbarTheme: TScrollBarTheme.darkScrollBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    textTheme: TTextTheme.lightTextTheme,
  );
}
