import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadethDetails/hadethDetails.dart';
import 'package:islami/hadethDetails/hadethDetailsProvider.dart';
import 'package:islami/models/hadethModel.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';

class AhadethTab extends StatefulWidget {
  static const String routeName = "ahadethScreen";
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<HadethDetailsProvider>(
      create: (context) => HadethDetailsProvider()..loadHadethFile(),
      builder: (context, child) {
        var provider= Provider.of<HadethDetailsProvider>(context);
        return Column(
          children: [
            Image.asset("assets/images/ahadeth_header.png"),
            Divider(
              thickness: 3,
              color: Color(0xFFB7935F),
            ),
            Text(AppLocalizations.of(context)!.ahadeth, style: Theme.of(context).textTheme.bodyLarge),
            Divider(
              thickness: 3,
              color: Color(0xFFB7935F),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: MyThemeData.PrimaryColor,
                  indent: 50,
                  endIndent: 50,
                ),
                itemBuilder: (context, index) {
                  return Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, HadethDetails.routeName,
                              arguments:provider.ahadethData[index]);
                        },
                        child: Text(
                          provider.ahadethData[index].title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ));
                },
                itemCount:provider.ahadethData.length,
              ),
            )
          ],
        );
      },
    );
  }


}
