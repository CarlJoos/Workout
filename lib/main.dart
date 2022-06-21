//import material
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Zoobie Zoobie Zu"),
        ),
        body: Center(
          child: Container(
            height: 350,
            width: 250,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromRGBO(14, 174, 87, 1),
                  Color.fromRGBO(12, 11, 6, 6)
                ])),
            child: const Align(
              child: Text(
                'Puti',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
