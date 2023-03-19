import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 100;
    double screenHeight = MediaQuery.of(context).size.height - 100;

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                alignment: Alignment.topLeft,
                child: const Text('Flutter',
                    style: TextStyle(color: Colors.green)),
              ),
              SizedBox(width: screenWidth),
              Container(
                margin: const EdgeInsets.only(top: 50),
                alignment: Alignment.topRight,
                child:
                    const Text('Flutter', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: screenHeight),
                alignment: Alignment.topLeft,
                child: const Text('Flutter',
                    style: TextStyle(color: Colors.green)),
              ),
              SizedBox(width: screenWidth),
              Container(
                margin: EdgeInsets.only(top: screenHeight),
                alignment: Alignment.topRight,
                child:
                    const Text('Flutter', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
