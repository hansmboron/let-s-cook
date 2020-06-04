import 'package:flutter/material.dart';
import 'package:lets_cook/models/category.dart';

class CategoriesMeals extends StatelessWidget {
  final Category category;

  const CategoriesMeals({this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por categoria ${category.id}'),
      ),
    );
  }
}
