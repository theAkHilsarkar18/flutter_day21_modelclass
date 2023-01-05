import 'package:flutter/material.dart';
import 'package:flutter_day21_modelclass/modelClass.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "Akhil";
  String id = "18";
  String salary = "1 cr+";
  String add = "surat";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home screen"),
        ),
        body: Center(
          child: FloatingActionButton.extended(
              onPressed: () {
                ModelClass mc1 = ModelClass(newName: name,newId: id,newSalary: salary,newAdd: add);
                Navigator.pushNamed(context, 'second',arguments: mc1);
              },
              label: Text(
                "First Next",
                style: TextStyle(letterSpacing: 3),
              ),),
        ),
      ),
    );
  }
}
