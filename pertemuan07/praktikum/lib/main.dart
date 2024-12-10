import 'package:flutter/material.dart';
import 'package:praktikum/bottom_navbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: DynamicBottomNavbar(),
    );
  }
}

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
                  });
              },
            ),
            Switch(
              value: lightOn, 
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Radio<String>(
                    value: 'Dart', 
                    groupValue: language, 
                    onChanged: (String? value){
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Dart'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Kotlin', 
                    groupValue: language, 
                    onChanged: (String? value){
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Kotlin'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Swift', 
                    groupValue: language, 
                    onChanged: (String? value){
                      setState(() {
                        language = value;
                        showSnackBar();
                      });
                    },
                  ),
                  title: Text('Swift'),
                ),
              ],
            ),
            ListTile(
              leading: Checkbox(
                value: agree, 
                onChanged: (bool? value){
                  setState(() {
                    agree = value!;
                    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                    content: Text(agree ? 'Agree' : 'Disagree'),
                    duration: Duration(seconds: 1),
                    ),
                  );
                });
                },
              ),
              title: Text('Agree / Disagree'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  void_dispose() {
    _controller.dispose();
    super.dispose();
  }
}