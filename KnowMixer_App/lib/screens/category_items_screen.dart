import 'package:flutter/material.dart';

import '../widgets/an_item.dart';
import '../models/item.dart';

class CategoryItemsScreen extends StatefulWidget {
  static const routeName = '/category-items';

  final List<Item> availableItems;

  CategoryItemsScreen(this.availableItems);

  @override
  _CategoryItemsScreenState createState() => _CategoryItemsScreenState();
}

class _CategoryItemsScreenState extends State<CategoryItemsScreen> {
  String categoryTitle;
  List<Item> displayedItems;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedItems = widget.availableItems.where((item) {
        return item.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle, style: TextStyle(fontSize: 22),),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return AnItem(
            id: displayedItems[index].id,
            title: displayedItems[index].title,
            imageUrl: displayedItems[index].imageUrl,
            description: displayedItems[index].description,
          );
        },
        itemCount: displayedItems.length,
      ),
    );
  }
}
