// main.dart
import 'package:flutter/material.dart';
import 'package:flutterproject/1507flutter/containerexperiment.dart';

//import '1570/columnexperiment.dart';
//import '1570/containerexperiment.dart ';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
      // body: ColumnExperiment(),
       body: CustomContainer(),
      ),
    );
  }
}
