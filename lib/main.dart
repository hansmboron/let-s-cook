import 'package:flutter/material.dart';
import 'package:lets_cook/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Let's cook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange.shade900,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}