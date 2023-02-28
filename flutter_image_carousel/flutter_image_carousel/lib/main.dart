import 'package:flutter/material.dart';
import 'package:flutter_image_carousel/screens/imageDesription.dart';
import './screens/imageDesription.dart';

//Noureddine Sidiabed
void main() {
  runApp(const MainApp());
}

List images = [
  'assets/brooklyn_bridge.png',
  'assets/central_park.png',
  'assets/empire_bldg.png',
  'assets/grand_central.png',
  'assets/high_line.png',
  'assets/metro_museum.png',
  'assets/statue_liberty.png',
  'assets/times_square.png',
];
//making list widget, iterating through image links
List<Widget> carouselContent = images
    .map(
      (image) => Container(
        //Gesture Detector to add an onTap function
        child: Builder(builder: (context) {
          return GestureDetector(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            onTap: () {
              // Navigate to the next screen when image is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageDescription()),
              );
            },
          );
        }),
      ),
    )
    .toList();

//Noureddine Sidiabed
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 375,
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    PageView(
                      children: carouselContent,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
