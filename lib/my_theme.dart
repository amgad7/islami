import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color PrimaryColor=Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w500,
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


  );

}