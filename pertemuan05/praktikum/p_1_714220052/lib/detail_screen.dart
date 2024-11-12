import 'package:flutter/material.dart';
import 'package:p_1_714220052/model/tourism_place.dart';

var fontCust = const TextStyle(fontFamily: 'Teko');

class DetailScreen extends StatefulWidget {
  final TourismPlace place;

  const DetailScreen({super.key, required this.place});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
      
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(widget.place.imageAsset),
                SafeArea(

                  child: Padding(
                    padding: const EdgeInsets.all(8),
                        
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    ),
                  ),

                ),
              ],
            ),
      
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Text(
                widget.place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 50,
                  fontFamily: 'Teko',
                ),
              ),
            ), 
      
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8),   
                      Text(
                        'Open Everyday',
                        style: fontCust,
                        ),
                    ],
                  ),
      
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8),
                      Text(
                        '09:00 - 17:00',
                        style: fontCust,
                        ),
                    ],
                  ),
      
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8),
                      Text(
                        'Rp 20.000',
                        style: fontCust,),
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
      
            SizedBox(
              height: 150,
              child: ListView(
      
                scrollDirection: Axis.horizontal,
                children: widget.place.imageUrls.map((url) {
      
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                  
                }).toList(),
              ),
            ),
      
      
          ],
        ),
      
      ),
    );

  }
}