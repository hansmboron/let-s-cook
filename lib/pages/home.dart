import 'package:flutter/material.dart';
import 'package:lets_cook/pages/categories_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Let's cook"),
        ),
        body: CategoriesScreen());
  }
}
