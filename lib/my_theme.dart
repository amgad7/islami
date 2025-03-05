import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color PrimaryColor=Color(0xFFB7935F);
  static const Color PrimaryDarkColor=Color(0xFF141A2E);
  static const Color YellowColor=Colors.amber;
  static const Color BlackColor=Color(0xFF242424);
  static const Color whiteColor=Colors.white;
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme:  BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,

        backgroundColor: PrimaryColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,

      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          titleTextStyle: GoogleFonts.elMessiri(
              color: Colors.black54,
              fontSize: 30,
              fontWeight: FontWeight.bold
          )
      ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      selectedItemColor: YellowColor,
      unselectedItemColor: Colors.white,

      backgroundColor: PrimaryDarkColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,

    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        titleTextStyle: GoogleFonts.elMessiri(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
        )
    ),
  );

}