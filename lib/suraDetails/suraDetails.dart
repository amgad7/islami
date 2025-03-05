import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/provider/myProvider.dart';
import 'package:islami/suraDetails/suraDetailsProvider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetails";
  const SuraDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return ChangeNotifierProvider<SuraDetailsProvider>(
      create: (context) =>SuraDetailsProvider()..loadFile(model.index),
      builder: (context, child) {
        var provider =Provider.of<SuraDetailsProvider>(context);
        // provider.loadFile(model.index);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                pro.getBackgroundPath(),
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                model.name,
              ),
            ),
            body: Card(
              elevation: 12,
              color: Colors.white.withOpacity(.7),
              margin: EdgeInsets.all(10),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide(color: Colors.transparent)),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
                itemBuilder: (context, index) {
                  return Card(
                      child: Text(
                       provider.verses[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ));
                },
                itemCount: provider.verses.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
