import 'package:flutter/material.dart';

void main() {
  runApp(DisplayGreeting());
}

//  What is a Stateless Widget?
//
//
//
//
//

class DisplayGreeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Greetings"),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://content.r9cdn.net/rimg/dimg/ca/7e/9ae1c4b2-city-21033-16c1b1c620d.jpg?crop=true&width=1020&height=498"),
                fit: BoxFit.fill),
          ),
          child: const Center(
            child: Text(
              "Welcome To CST3601",
              style: TextStyle(fontSize: 54, color: Colors.green),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
