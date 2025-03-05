import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkary = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر"
  ];

  int counter = 0;
  int index = 0;
  double turns = 0 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 2, child: AnimatedRotation(
            duration: Duration(milliseconds: 500),
            turns: turns,
            child: Image.asset("assets/images/sebha.png"))),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(
                  "عدد التسبيحات",
                  style: GoogleFonts.elMessiri(
                      fontWeight: FontWeight.w600, fontSize: 25),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: MyThemeData.PrimaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text("$counter",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    counter++;
                    turns += .09;
                    if (counter > 30) {
                      index++;
                      counter = 0;
                      if (index == azkary.length) {
                        index = 0;
                      }
                    }
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: MyThemeData.PrimaryColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      "${azkary[index]}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: MyThemeData.whiteColor),
                    ),
                  ),
                )
              ],
            ))
      ],
    );
  }
}
