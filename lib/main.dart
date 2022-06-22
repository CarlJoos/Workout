//import material
import 'package:flutter/material.dart';
import 'package:flutter_application_1/exercise_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Zoobie Zoobie Zu"),
        ),
        body: const Center(
          child: WorkoutList(),
        ),
      ),
    );
  }
}
