import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * .5,
            child: Image.asset("assets/images/radio.png")),
        Text(
          "إذاعة القرآن الكريم",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 70,),
        Container(
          width: 205.25,
          height: 36,
          child: Row(
            children: [
              Expanded(
                  child: Image.asset("assets/images/Icon metro-next 2.png")),
              Expanded(
                  child: Image.asset("assets/images/Icon awesome-play.png")),
              Expanded(child: Image.asset("assets/images/Icon metro-next.png")),
            ],
          ),
        )
      ],
    );
  }
}
