import 'package:flutter/material.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  State<WorkoutList> createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  final _workouts = <String>[
    "Pullups",
    "Pushups",
    "Bench Press",
    "Squat",
    "Deadlift",
    "Lunges",
    "Crunches"
  ];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // Double the item count for the dividers
        itemCount: _workouts.length * 2,
        itemBuilder: (context, i) {
          // Every other item is a divider
          if (i.isOdd) {
            return const Divider();
          }
          // Divides iterator by 2 and gets integer version of it, basically
          // makes the dividers work
          final index = i ~/ 2;

          return ListTile(title: Text(_workouts[index], style: _biggerFont));
        });
  }
}
