import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadethDetails/hadethDetails.dart';
import 'package:islami/home/tabs/ahadeth_tab.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/myProvider.dart';
import 'package:islami/suraDetails/suraDetails.dart';
import 'package:provider/provider.dart';
import 'home/home_screen.dart';
import 'ui/splash_screen/splashScreen.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
    create: (context) => MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider= Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      locale: Locale("${provider.languageCode}"),
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        AhadethTab.routeName: (context) => AhadethTab(),
        HadethDetails.routeName: (context) => HadethDetails()
      },
    );
  }
}
