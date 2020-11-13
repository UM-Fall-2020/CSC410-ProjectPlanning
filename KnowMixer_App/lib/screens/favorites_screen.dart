import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/an_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Item> favoriteItems;

  FavoritesScreen(this.favoriteItems);

  @override
  Widget build(BuildContext context) {
    if (favoriteItems.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return AnItem(
            id: favoriteItems[index].id,
            title: favoriteItems[index].title,
            imageUrl: favoriteItems[index].imageUrl,
            description: favoriteItems[index].description,
          );
        },
        itemCount: favoriteItems.length,
      );
    }
  }
}
