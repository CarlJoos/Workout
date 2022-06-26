//import material
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
//import 'package:flutter_application_1/font_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Workout App",
      //home: ExerciseList(),
      home: HomePage(),
    );
  }
}
