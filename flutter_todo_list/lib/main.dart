import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: flutter_todo()));
}

class flutter_todo extends StatefulWidget {
  @override
  _flutterTodoState createState() => _flutterTodoState();
}

class _flutterTodoState extends State<flutter_todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
      ),
      body: Column(
        children: [
          Form(
              child: TextFormField(
            decoration: InputDecoration(hintText: 'Type New Task'),
            keyboardType: TextInputType.text,
          ))
        ],
      ),
    );
  }
}
