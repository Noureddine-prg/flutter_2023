import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(MaterialApp(home: NY_Attractions()));
}

class NY_Attractions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var attraction_Name = [
      'Brooklyn Bridge',
      'Central Park',
      'Empire State Building',
      'Grand Central Terminal',
      'The High Line',
      'The Metropolitan Museum of Arts',
      'Statue of Liberty',
      'Times Square'
    ];

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

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var theFraction = (screenWidth * .05).toDouble();

    return Scaffold(
      appBar: AppBar(title: const Text("New York Attractions")),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: attraction_Name.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              width: screenWidth,
              child: ListTile(
                title: Image.asset('assets/' + attraction_img[index]),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(attraction_Name[index]),
                ),
                onTap: () {
                  //print("You tapped me");
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen2(data: index);
                  }));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
