import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lets_cook/components/main_drawer.dart';
import 'package:lets_cook/models/meal.dart';
import 'package:lets_cook/pages/favorites.dart';
import 'package:lets_cook/utils/app_routes.dart';

import 'categories_screen.dart';

class Tabs extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const Tabs(this.favoriteMeals);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  Widget favoriteScreen;
  void initState() {
    super.initState();
    favoriteScreen = Favorites(widget.favoriteMeals);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Let's cook",
              style: GoogleFonts.gorditas(
                fontSize: 24,
              )),
          bottom: TabBar(
            indicator: BubbleTabIndicator(
              indicatorHeight: 38.0,
              indicatorRadius: 12,
              indicatorColor: Theme.of(context).accentColor.withAlpha(150),
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
            ),
            labelStyle: TextStyle(fontSize: 30),
            tabs: [
              Tab(
                icon: Icon(Icons.fastfood),
                // text: '🍲',
              ),
              Tab(
                icon: Icon(Icons.star),
                // text: '🌟',
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.SETTING);
              },
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            Categories(),
            favoriteScreen,
          ],
        ),
      ),
    );
  }
}
