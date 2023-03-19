import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final dateKey, idKey, courseKey, sectionKey, termKey;

  Screen2(
      {@required this.dateKey,
      this.idKey,
      this.courseKey,
      this.sectionKey,
      this.termKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Student Login Info"),
          //removes back button
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Text("Date: " +
              dateKey +
              '\n' +
              "ID: " +
              idKey +
              '\n' +
              "Course: " +
              courseKey +
              '\n' +
              "Section: " +
              sectionKey +
              '\n' +
              "Term: " +
              termKey),
        ));
  }
}
