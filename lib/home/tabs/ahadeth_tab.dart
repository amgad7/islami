import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadethDetails.dart';
import 'package:islami/models/hadethModel.dart';
import 'package:islami/my_theme.dart';

class AhadethTab extends StatefulWidget {
  static const String routeName = "ahadethScreen";
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/ahadeth_header.png"),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text("Ahadeth", style: Theme.of(context).textTheme.bodyLarge),
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
                      arguments: ahadethData[index]);
                },
                child: Text(
                  ahadethData[index].title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ));
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (hadethFile) {
        List<String> ahadeth = hadethFile.split("#");
        for (int i = 0; i < ahadeth.length; i++) {
          String hadeth = ahadeth[i];
          List<String> hadethLines = hadeth.trim().split("\n");
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> hadethContent = hadethLines;
          ahadethData.add(HadethModel(title: title, content: hadethContent));
        }
        setState(() {});
      },
    );
  }
}
