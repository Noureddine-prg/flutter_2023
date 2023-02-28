import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  //Declare pass variable
  final indexKey;

  //constructor
  Screen2({@required this.indexKey});

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

  List<String> playerCountry = [
    'USA',
    'Sweeden',
    'USA',
    'Serbia',
    'Switzerland',
    'Australia',
    'Tchekoslovakia',
    'USA',
    'Spain',
    'Australia',
    'USA'
  ];

  List<String> playerYOB = [
    '1970',
    '1956',
    '1952',
    '1987',
    '1981',
    '1938',
    '1960',
    '1959',
    '1986',
    '1934',
    '1971',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tennis - Grand Slam Titles'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/' + playerImage[indexKey]),
            ),
            Text(
              playerName[indexKey],
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Country: ' + playerCountry[indexKey],
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Year of Birth: ' + playerYOB[indexKey],
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Number of Titles Won: ' + slamTitles[indexKey],
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
