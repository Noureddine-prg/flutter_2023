import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

//Player Class, we will instantiate a player object in the list view
class Player {
  String name;
  String country;
  int yearOfBirth;
  int noOfTitles;
  String image;

  //constructor //we use required to prevent null values
  Player({
    required this.name,
    required this.country,
    required this.yearOfBirth,
    required this.noOfTitles,
    required this.image,
  })

  
}
