import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  //declare passing variable(s) as final (only changes at running time)
  final bikenameKey, bikepriceKey, bikeratingKey, bikeimageKey, bikedescKey;
  //build the constructor for the class
  Screen2(
      {@required this.bikenameKey,
      this.bikeimageKey,
      this.bikepriceKey,
      this.bikedescKey,
      this.bikeratingKey});

  /* Using Table widget
 @override
 Widget build(BuildContext context) {
 return Scaffold(appBar: AppBar(title: Text('Bike Shop')),
 body: Column( children: [
 Image.asset('images/' + bikeimageKey),
 SizedBox(height: 20),
 Padding(padding: const EdgeInsets.all(8.0),
 child: Table( border: TableBorder.all(),
 children: [
 TableRow(children: [
 Text('Name'), Text('Price'), Text('Rating'),Text('Description') ]),
 TableRow(children: [
 Text(bikenameKey), Text(bikepriceKey), Text(bikeratingKey),
 Text(bikedescKey) ]) ], ), ) ], ));
 }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Bike Shop')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/' + bikeimageKey),
            SizedBox(height: 20),
            Text(bikenameKey,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(bikepriceKey,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(bikeratingKey,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(bikedescKey,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
          ]),
        ));
  }
}
