import 'package:flutter/material.dart';
import 'package:flutter_application_1/exercise_list.dart';
import 'package:flutter_application_1/font_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<HomepageItem> _widgetList = <HomepageItem>[
    HomepageItem("Exercist List", const ExerciseList())
  ];

  itemSelect(HomepageItem homepageItem) {
    Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
      return homepageItem.widget;
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
            itemCount: _widgetList.length * 2,
            itemBuilder: (context, i) {
              // Every other item is a divider
              if (i.isOdd) {
                return const Divider();
              }
              // Divides iterator by 2 and gets integer version of it, basically
              // makes the dividers work
              final index = i ~/ 2;

              return ListTile(
                title: Text(_widgetList[index].name,
                    style: MyTextStyleBase.medium),
                // If you just pass the function without the arrow, it errors
                // because of ListView.builder trying to call the function while
                // still building the rest of the tiles
                onTap: () => itemSelect(_widgetList[index]),
              );
              // trailing: Icon(Icons.arrow_forward_ios));
            }));
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.amber,
//         title: const Text("HomePage"),
//       ),
//       body: Center(
//         child: TextButton(
//           child: const Text("Exercise List"),
//           onPressed: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const ExerciseList()));
//           },
//           style: (TextButton.styleFrom(
//               primary: Colors.white,
//               backgroundColor: Colors.grey,
//               textStyle: const TextStyle(color: Colors.white, fontSize: 22))),
//         ),
//       ),
//     );
//   }
// }

class HomepageItem {
  String name;
  Widget widget;
  HomepageItem(this.name, this.widget);
}
