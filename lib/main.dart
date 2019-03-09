import 'package:flutter/material.dart';

import 'welcome_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Piggy Bank',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
