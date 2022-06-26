import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets/font_styles.dart';

class ExcerciseWidget extends StatefulWidget {
  final String title;
  final String muscles;
  final String description;
  final String image;

  const ExcerciseWidget(
      {Key? key,
      this.title = "",
      this.muscles = "",
      this.description = "",
      this.image = ""})
      : super(key: key);

  @override
  State<ExcerciseWidget> createState() => _ExcerciseWidgetState();
}

class _ExcerciseWidgetState extends State<ExcerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: Color.fromARGB(226, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(children: [
                      Image.asset(
                        widget.image,
                        height: 400,
                      ),
                      Text(
                        widget.muscles,
                        style: MyTextStyleBase.mediumWhite,
                      ),
                      Text(
                        widget.description,
                        style: MyTextStyleBase.mediumWhite,
                      )
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
