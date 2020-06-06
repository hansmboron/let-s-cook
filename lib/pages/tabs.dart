import 'package:flutter/material.dart';
import 'package:lets_cook/components/main_drawer.dart';
import 'package:lets_cook/pages/favorites.dart';

import 'categories_screen.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Let's cook"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.fastfood),
                // text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star),
                // text: 'Favoritos',
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            )
          ],
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            Categories(),
            Favorites(),
          ],
        ),
      ),
    );
  }
}
