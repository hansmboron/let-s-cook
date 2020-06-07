import 'package:flutter/material.dart';
import 'package:lets_cook/data/dummy_data.dart';
import 'package:lets_cook/models/meal.dart';
import 'package:lets_cook/models/settings.dart';
import 'package:lets_cook/pages/categories_meals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lets_cook/pages/categories_screen.dart';
import 'package:lets_cook/pages/meal_details.dart';
import 'package:lets_cook/pages/settings_page.dart';
import 'package:lets_cook/pages/tabs.dart';
import 'package:lets_cook/utils/app_routes.dart';

void main() => runApp(LetsCook());

class LetsCook extends StatefulWidget {
  @override
  _LetsCookState createState() => _LetsCookState();
}

class _LetsCookState extends State<LetsCook> {
  Settings settings = Settings();
  List<Meal> _avaliableMeals = DUMMY_MEALS;
  void _filterMeals(Settings settings) {
    setState(() {
      _avaliableMeals = DUMMY_MEALS.where((meal) {
        this.settings = settings;

        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;
        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Let's cook",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange.shade900,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: GoogleFonts.robotoMonoTextTheme().copyWith(
          headline6: GoogleFonts.amaranth(fontSize: 20),
        ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => Tabs(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMeals(_avaliableMeals),
        AppRoutes.MEALS_DETAILS: (ctx) => MealDetail(),
        AppRoutes.SETTING: (ctx) => SettingsPage(_filterMeals, settings),
      },
      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (_) => Categories()),
    );
  }
}
