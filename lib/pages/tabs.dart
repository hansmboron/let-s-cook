import 'package:flutter/material.dart';
import 'package:lets_cook/pages/favorites.dart';

import 'categories_screen.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
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
        ),
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
