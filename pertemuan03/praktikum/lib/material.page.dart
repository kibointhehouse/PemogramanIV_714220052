import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      drawer: Drawer(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:321430262.
        child: ListView(
          children:[
          ListTile(title: Text('HomePage')),
          ListTile(title: Text('about page')),
        ],
        ),
      ),
      body: const Center(
        child: BiggerText(text: "Hello Ulbi"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
      ]),
    );
  }
}
class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);
@override
Widget build(BuildContext context) {
  return Text(
    text,
style: const TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  
),
);
}
}

class BiggerText extends StatefulWidget {
final String text;
const BiggerText({Key? key, required this.text}) : super(key: key);
@override 
State<BiggerText> createState() => _BiggerTextState();
}
class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
Text(
  widget.text,
  style: TextStyle(fontSize: _textSize),
  ),
ElevatedButton(
  child:  Text(_textSize == 16.0 ? "Perbesar": "Perkecil"),
  onPressed: () {
    setState(() {
  _textSize = _textSize == 16.0 ? 32.0 : 16.0;
  });
  },
  )
  ],
);
}
}