import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLightTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    drawerTheme: const DrawerThemeData(
      elevation: 0.0,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[500],
    ),
    textTheme: getTextTheme,
  );
  static TextTheme getTextTheme = TextTheme(
    bodyText1: GoogleFonts.prompt(
      fontSize: 16.0,
      color: Colors.black,
    ),
    bodyText2: GoogleFonts.prompt(
      fontSize: 14.0,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.prompt(
      fontSize: 12.0,
      color: Colors.black,
      fontWeight: FontWeight.w200,
    ),
    subtitle2: GoogleFonts.prompt(
      fontSize: 10.0,
      color: Colors.black,
    ),
    headline1: GoogleFonts.prompt(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline2: GoogleFonts.prompt(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline3: GoogleFonts.prompt(
      fontSize: 22.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline4: GoogleFonts.prompt(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline5: GoogleFonts.prompt(
      fontSize: 26.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.prompt(
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}
