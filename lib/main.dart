import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Data Pemain Sepakbola'),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            PlayerCard(
              playerName: 'Akari Nara',
              playerCountry: 'Japan',
              playerClub: 'Datebayo',
              rating: 4, // Player 1 rating set to 4 stars
              playerImage: AssetImage('assets/3.png'),
            ),
            PlayerCard(
              playerName: 'Aldine',
              playerCountry: 'Germany',
              playerClub: 'Donton FC',
              rating: 3, // Player 2 rating set to 4 stars
              playerImage: AssetImage('assets/2.png'),
            ),
            PlayerCard(
              playerName: 'Adara',
              playerCountry: 'Saudi Arabia',
              playerClub: 'Al Nasr',
              rating: 5, // Player 3 rating set to 5 stars
              playerImage: AssetImage('assets/1.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String playerName;
  final String playerCountry;
  final String playerClub;
  final int rating;
  final ImageProvider playerImage;

  PlayerCard({
    required this.playerName,
    required this.playerCountry,
    required this.playerClub,
    required this.rating,
    required this.playerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: playerImage,
              radius: 30.0,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(playerName, style: TextStyle(fontSize: 20.0,fontFamily: "sans-serif")),
                  Text(playerCountry),
                  Text(playerClub),
                  Row(
                    children: List.generate(rating, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: index < rating ? Colors.amber : Colors.grey,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}