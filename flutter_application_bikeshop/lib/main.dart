import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(MaterialApp(home: BikeShop()));
}

class BikeShop extends StatelessWidget {
  //Store data in arrays (in dart array is called List)
  List<String> bikeName = [
    'Barron Comfort Hybrid Bike - 21 Speed',
    'Beaumont City Bike - 7 Speed',
    'Chatham 29" Beach Cruiser Bike - Single Speed',
    'Harper Coaster Bike - Single Speed',
    'Kinney City Bike - 7 Speed'
  ];
  List<String> bikeImage = [
    'barron1.png',
    'beaumont1.png',
    'chatham1.png',
    'harper1.png',
    'kinney1.png'
  ];
  List<String> bikePrice = [
    '\$299.99 Regular price \$379.99 Sale price',
    '\$299.99 Regular price \$329.99 Sale price',
    '\$289.99 Regular price \$329.99 Sale price',
    '\$249.99 Regular price',
    '\$299.99 Regular price\$329.99 Sale price'
  ];
  List<String> bikeRating = [
    '4.8 star rating',
    '4.6 star rating',
    '4.9 star rating',
    '4.7 star rating',
    '4.7 star rating'
  ];
  List<String> bikeDesc = [
    'Barron blends comfort and speed with a versatile 21-speed drivetrain, shockabsorbing suspension fork, lightweight aluminum frame, and upright riding position.',
    'Enhance yourcommute, errand runs, and free time with Beaumont. This European-styled city bike perfectly balances form and function with a 7-speed drivetrain, smooth shifters, and a sturdy rear rack.',
    'Chatham is comfortable, easy, and a go-to for a casual ride. Equipped with a padded saddle, wide, cushioning tires, and a simple coaster brake, this beach cruiser will make you want to pedal up and down the coast all day.',
    'Meet your lightweight, low-maintenance throwback bike, reminiscent of days spent cruising the cul-desac. Harper Coaster kicks it old-school with a built-in coaster brake and a simple single speed drivetrain.',
    'Kinney is a simple and stylish seven-speeder, sporting smooth shifting, a durable steel frame, and comfortable riding position.'
  ];

  @override
  Widget build(BuildContext context) {
    //final means the variable only changes at the run
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(title: Text('Bike Shop')),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bikeName.length,
          itemBuilder: (context, index) {
            return Container(
              width: screenWidth,
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assets/' + bikeImage[index]),
                ),
                subtitle: Align(
                    alignment: Alignment.topCenter,
                    child: Text(bikeName[index])),
                onTap: () {
                  //1. Display AlertDialog
                  //displayAlertDialog(context, bikeName[index]);
                  //2. Passing Info to second screen Screen2
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen2(
                        bikeimageKey: bikeImage[index],
                        bikenameKey: bikeName[index],
                        bikepriceKey: bikePrice[index],
                        bikeratingKey: bikeRating[index],
                        bikedescKey: bikeDesc[index]);
                  }));
                },
              ),
            );
          },
        ));
  } //end of build()

//create method displayAlertDialog()
  displayAlertDialog(BuildContext context, String infoname) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text('Alert'),
              content: Text(infoname),
              actions: [
                TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      //stay on the app
                      Navigator.of(context).pop();
                    })
              ]);
        });
  }
}
