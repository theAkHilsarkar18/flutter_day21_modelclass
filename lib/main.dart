import 'package:flutter/material.dart';
import 'package:flutter_day21_modelclass/second.dart';

import 'home.dart';
import 'third.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Home(),
        'second' : (context) => Second(),
      },
    ),
  );
}