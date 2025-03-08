import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/models/Radios.dart';

class RadioItem extends StatelessWidget {

  RadioItem({ super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "إذاعه القرأن الكريم",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 70,
        ),
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
