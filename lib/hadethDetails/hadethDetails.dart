import 'package:flutter/material.dart';
import 'package:islami/models/hadethModel.dart';
import 'package:islami/provider/myProvider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var pr=Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(pr.getBackgroundPath()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.title}"),
        ),
        body: Card(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              height: MediaQuery.of(context).size.height * .6,
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
              ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    model.content[index],
                    textAlign: TextAlign.center,
                  );
                },
                itemCount: model.content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
