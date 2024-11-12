import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempat Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                'Ranca Upas',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8),   
                      Text('Open Everyday'),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8),
                      Text('09:00 - 17:00'),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8),
                      Text('Rp 20.000'),
                    ],
                  ),
                ],
              ),
            ),
            
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],

        ),
      ),
    );

  }
}