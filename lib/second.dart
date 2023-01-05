import 'package:flutter/material.dart';
import 'package:flutter_day21_modelclass/modelClass.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String? salary,add;
  @override
  Widget build(BuildContext context) {
    ModelClass m1 = ModalRoute.of(context)!.settings.arguments as ModelClass;
    salary = m1.newSalary;
    add = m1.newAdd;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("second screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${m1.newName}"),
              Text("${m1.newId}"),
              Text("${m1.newSalary}"),
              Text("${m1.newAdd}"),
              FloatingActionButton.extended(
                onPressed: () {
                },
                label: Text(
                  "Second Next",
                  style: TextStyle(letterSpacing: 3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
