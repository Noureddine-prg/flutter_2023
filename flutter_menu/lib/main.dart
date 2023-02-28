import 'package:flutter/material.dart';

//Noureddine Sidiabed
//Homework 2
//Flutter Menu

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/wallpaper.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  createMenuItem(
                      'assets/burger.png', "Burger", "Burger Description", 5),
                  createMenuItem(
                      'assets/pasta.png', "Pasta", "Pasta Description", 4),
                  createMenuItem(
                      'assets/pasta2.png', "Pasta 2", "Pasta 2 Description", 5),
                  createMenuItem('assets/hotdogs.png', "Hot Dogs",
                      "Hot Dogs Description", 4),
                  createMenuItem(
                      'assets/fries.png', "Fries", "Fries Description", 3),
                ],
              )),
        ),
      ),
    );
  }

  //Noureddine Sidiabed
  Widget createMenuItem(
      String imageString, String foodTitle, String foodDescription, int price) {
    return Container(
        margin: EdgeInsets.all(10),
        color: Colors.blueGrey.withOpacity(.6),
        child: Row(
          children: <Widget>[
            //Image Container
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 130,
              child: Image(image: AssetImage(imageString), fit: BoxFit.cover),
            ),
            //Food Price and Description
            Container(
              width: 150,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(foodTitle)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(foodDescription)],
                  ),
                ],
              ),
            ),
            //Price Container
            Container(
              child: Text(
                "\$" + "$price",
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ));
  }
}
