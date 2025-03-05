import 'package:flutter/material.dart';
import 'package:islami/bottomSheets/languageBottomSheets.dart';
import 'package:islami/bottomSheets/themeBottomSheets.dart';
import 'package:islami/my_theme.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    child: LanguageBottomSheets(),
                  );
                },
              );
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: MyThemeData.PrimaryColor),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Arabic",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    child: ThemeBottomSheets(),
                  );
                },
              );
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(color: MyThemeData.PrimaryColor),
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Light",
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
        ],
      ),
    );
  }
}
