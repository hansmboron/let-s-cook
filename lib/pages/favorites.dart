import 'package:flutter/material.dart';
import 'package:lets_cook/components/meal_item.dart';
import 'package:lets_cook/models/meal.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const Favorites(this.favoriteMeals);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição favorita!'),
      );
    } else {
      return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
