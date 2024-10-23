import 'package:flutter/material.dart';

import 'material.page.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: false,
      ),
      home: HomePage(),
    );
  }
}