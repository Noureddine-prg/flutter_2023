import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final data;

  //Constructor
  Screen2({@required this.data});

  var attraction_img = [
    'brooklyn_bridge.png',
    'central_park.png',
    'empire_bldg.png',
    'grand_central.png',
    'high_line.png',
    'metro_museum.png',
    'statue_liberty.png',
    'times_square.png'
  ];

  var attraction_desc = [
    'Landmark 19th-century bridge',
    'Urban Oasis with ballfields and a zoo',
    '102-story landmark with observatories',
    'Architectural landmark and transit hub',
    'Park set on an old elevated rail line',
    'World-class art collection',
    'American icon in New York Harbor',
    'Bright lights and Broadway shows'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/' + attraction_img[data]),
            Text(
              attraction_desc[data],
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
