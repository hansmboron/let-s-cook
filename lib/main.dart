import 'package:flutter/material.dart';
import 'package:lets_cook/pages/categories_meals.dart';
import 'package:lets_cook/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lets_cook/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var routes = AppRoutes();
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
        AppRoutes.HOME: (ctx) => Home(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMeals(),
      },
    );
  }
}
