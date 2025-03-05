import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/myProvider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheets extends StatelessWidget {
  LanguageBottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("en");
                },
                child: Text(
                  "English",
                  style: GoogleFonts.elMessiri(
                    fontSize: 35,
                    color: provider.languageCode=="en"
                        ? MyThemeData.PrimaryColor
                        : MyThemeData.BlackColor,
                  ),
                ),
              ),
              if (provider.languageCode=="en")...[
                Icon(
                  Icons.done,
                  size: 35,
                  color: MyThemeData.PrimaryColor,
                )
              ]
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child: Text(
                  "Arabic",
                  style: GoogleFonts.elMessiri(
                    fontSize: 35,
                    color: provider.languageCode=="ar"
                        ? MyThemeData.PrimaryColor
                        : MyThemeData.BlackColor,
                  ),
                ),
              ),
              if(provider.languageCode=="ar")...[
                Icon(
                  Icons.done,
                  size: 35,
                  color:  MyThemeData.PrimaryColor

                )
              ]

            ],
          ),
        ],
      ),
    );
  }
}
