import 'package:flutter/material.dart';

import 'login_screen_3.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Piggy Bank',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginScreen3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
