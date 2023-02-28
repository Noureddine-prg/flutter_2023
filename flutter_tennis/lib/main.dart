import 'package:flutter/material.dart';
import 'screen2.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: flutter_tennis()));
}

class flutter_tennis extends StatelessWidget {
  List<String> playerName = [
    'Andre Agassi',
    'Bjorn Borg',
    'Jimmy Connors',
    'Novak Djokovic',
    'Roger Federer',
    'Rod Laver',
    'Ivan Lendl',
    'John McEnroe',
    'Rafael Nadal',
    'Ken Rosewall',
    'Pete Sampras'
  ];

  List<String> playerImage = [
    'agassi.png',
    'borg.png',
    'connors.png',
    'djokovic.png',
    'federer.png',
    'laver.png',
    'lendl.png',
    'mcenroe.png',
    'nadal.png',
    'rosewall.png',
    'sampras.png'
  ];

  List<String> slamTitles = [
    '8',
    '11',
    '8',
    '22',
    '20',
    '11',
    '8',
    '7',
    '22',
    '8',
    '14'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tennis - Grand Slam Titles'),
        ),
        //loop through creating an item based on length of list
        body: ListView.builder(
            itemCount: playerName.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.indigoAccent.shade200),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Image.asset('assets/' + playerImage[index]),
                    title: Text(playerName[index]),
                    onTap: () {
                      // Going to second Screen
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return Screen2(indexKey: index);
                      })));
                      // Passing the index to the second screen
                      // On second screen we
                    },
                  ),
                ),
              );
            }));
  }
}
