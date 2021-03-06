import 'package:flutter/material.dart';
import 'package:qrcodegenerator/Screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.cyan[600],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.cyan[600],
      ),
      home: HomeScreen(),
    );
  }
}

