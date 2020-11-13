import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'models/item.dart';
import 'dummy_data.dart';
import 'screens/category_items_screen.dart';
import 'screens/item_detail_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Item> _availableItems = DUMMY_ITEMS;
  List<Item> _favoriteItems = [];

  void _toggleFavorite(String itemId) {
    final existingIndex =
        _favoriteItems.indexWhere((item) => item.id == itemId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteItems.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteItems.add(
          DUMMY_ITEMS.firstWhere((item) => item.id == itemId),
        );
      });
    }
  }

  bool _isItemFavorite(String id) {
    return _favoriteItems.any((item) => item.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KnowMixer',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1)),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteItems),
        CategoryItemsScreen.routeName: (ctx) =>
            CategoryItemsScreen(_availableItems),
        ItemDetailScreen.routeName: (ctx) =>
            ItemDetailScreen(_toggleFavorite, _isItemFavorite),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
