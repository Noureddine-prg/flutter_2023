import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen2.dart';

void main() {
  runApp(MaterialApp(home: StudentLogin()));
}

class StudentLogin extends StatefulWidget {
  @override
  State<StudentLogin> createState() {
    return _StudentLoginState();
  }
}

class _StudentLoginState extends State<StudentLogin> {
  //use form and assign key
  final formKey = GlobalKey();

  //create input controllers for validation
  final dateController = TextEditingController();
  final idController = TextEditingController();
  final courseController = TextEditingController();
  final sectionController = TextEditingController();
  final termController = TextEditingController();

  //store inputs into strings
  String date = '';
  String id = '';
  String course = '';
  String section = '';
  String term = '';

  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Registration")),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Date Input
              TextFormField(
                autofocus: true,
                focusNode: myFocusNode,
                controller: dateController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(labelText: 'Date'),
                textInputAction: TextInputAction.next,
              ),

              //ID Input
              TextFormField(
                focusNode: myFocusNode,
                controller: idController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'ID'),
                textInputAction: TextInputAction.next,
              ),

              //Course Input
              TextFormField(
                focusNode: myFocusNode,
                controller: courseController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: 'Course'),
                textInputAction: TextInputAction.next,
              ),

              //Section Input
              TextFormField(
                focusNode: myFocusNode,
                controller: sectionController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Section'),
                textInputAction: TextInputAction.next,
              ),

              //Term Input
              TextFormField(
                focusNode: myFocusNode,
                controller: termController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(labelText: 'Term'),
              ),

              ElevatedButton(
                child: const Text("Sign In"),
                onPressed: () {
                  print("Inputs Entered");

                  setState(() {
                    date = dateController.text;
                    id = idController.text;
                    course = courseController.text;
                    section = sectionController.text;
                    term = termController.text;

                    if (date.isEmpty ||
                        id.isEmpty ||
                        course.isEmpty ||
                        section.isEmpty ||
                        term.isEmpty) {
                      displayAlert('Not all fields are filled in');
                    } else if (id.length != 8) {
                      displayAlert('ID must be 8 characters long and an int');
                    } else if (course[0] != "C" &&
                        course[1] != "S" &&
                        course[2] != "T" &&
                        course.length != 7) {
                      displayAlert(
                          'Course must start with CST and be 7 characters long');
                    } else if (section.length != 3) {
                      displayAlert('Section must be 3 characters long');
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen2(
                            dateKey: date,
                            idKey: id,
                            courseKey: course,
                            sectionKey: section,
                            termKey: term);
                      }));
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  displayAlert(String info) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Form Alert'),
            content: Text(info),
            actions: [
              TextButton(
                  onPressed: () {
                    print("redo");
                  },
                  child: const Text("OKAY"))
            ],
          );
        });
  }
}
