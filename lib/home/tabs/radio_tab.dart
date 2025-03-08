import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/radio_item.dart';
import 'package:islami/models/RadioResponse.dart';
import 'package:islami/models/Radios.dart';

class RadioTab extends StatelessWidget {
  RadioTab({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * .5,
            child: Image.asset("assets/images/radio.png")),
         RadioItem(),

      ],
    );
  }

  Future<RadioResponse> getRadios() async {
    var url = Uri.parse("https://mp3quran.net/api/v3/radios");
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    return RadioResponse.fromJson(json);
  }
}
