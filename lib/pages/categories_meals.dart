import 'package:flutter/material.dart';
import 'package:lets_cook/components/meal_item.dart';
import 'package:lets_cook/models/category.dart';
import 'package:lets_cook/models/meal.dart';

class CategoriesMeals extends StatelessWidget {
  final List<Meal> meals;

  const CategoriesMeals(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
