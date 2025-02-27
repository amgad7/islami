import 'package:flutter/material.dart';
import 'package:islami/models/hadethModel.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.title}"),
        ),
        body: Card(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height*.7,
              child: ListView.builder(itemBuilder: (context, index) {
                return Text(model.content[index],textAlign: TextAlign.center,);
              },itemCount: model.content.length,),
            ),
          ),
        ),
      ),
    );
  }
}
