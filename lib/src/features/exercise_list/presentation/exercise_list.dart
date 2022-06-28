import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/exercise/presentation/exercise.dart';

import '../../exercise/domain/exercise.dart';
import 'package:flutter_application_1/src/common_widgets/font_styles.dart';

class ExerciseList extends StatefulWidget {
  const ExerciseList({Key? key}) : super(key: key);

  @override
  State<ExerciseList> createState() => _ExerciseListState();
}

class _ExerciseListState extends State<ExerciseList> {
  final _exercises = <Exercise>[
    Exercise(
        "Pullups", "Back Biceps", "Do a pullup", "assets/images/pullup.gif"),
    Exercise("Pushups", "Every upper body muscle", "Do a pushup", ""),
    Exercise("Bench Press", "Pectorals", "Do a bench press", ""),
    Exercise("Squat", "Legs", "Do a squat", ""),
    Exercise("Deadlift", "Legs, Back", "Do a deadlift", ""),
    Exercise("Lunges", "Legs", "Do a lunge", ""),
    Exercise("Crunches", "Abs", "Do a crunch", "")
  ];

  determineImage(String imageName) {
    if (imageName == "") {
      imageName = "assets/images/black.png";
    }
    return imageName;
  }

  workoutSelect(Exercise exercise) {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      return ExcerciseWidget(
          title: exercise.name,
          muscles: exercise.muscles,
          description: exercise.description,
          image: determineImage(exercise.image));
      // return Scaffold(
      //   appBar: AppBar(title: Text(exercise.name)),
      //   body: Text(exercise.description),
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Exercise List"),
        ),
        body: ListView.builder(
            // Double the item count for the dividers
            itemCount: _exercises.length * 2,
            itemBuilder: (context, i) {
              // Every other item is a divider
              if (i.isOdd) {
                return const Divider();
              }
              // Divides iterator by 2 and gets integer version of it, basically
              // makes the dividers work
              final index = i ~/ 2;

              return ListTile(
                title:
                    Text(_exercises[index].name, style: MyTextStyleBase.medium),
                // If you just pass the function without the arrow, it errors
                // because of ListView.builder trying to call the function while
                // still building the rest of the tiles
                onTap: () => workoutSelect(_exercises[index]),
              );
              // trailing: Icon(Icons.arrow_forward_ios));
            }));
  }
}
