import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadethDetails.dart';
import 'package:islami/home/tabs/ahadeth_tab.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/suraDetails.dart';
import 'home/home_screen.dart';
import 'ui/splash_screen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
        AhadethTab.routeName:(context)=>AhadethTab(),
        HadethDetails.routeName:(context)=>HadethDetails()
      },
    );
  }
}

