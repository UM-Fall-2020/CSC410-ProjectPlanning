import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../dummy_data.dart';

class ItemDetailScreen extends StatelessWidget {
  static const routeName = '/item-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  ItemDetailScreen(this.toggleFavorite, this.isFavorite);

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 210,
      width: 400,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context).settings.arguments as String;
    final selectedItem = DUMMY_ITEMS.firstWhere((item) => item.id == itemId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedItem.title}', style: TextStyle(fontSize: 22),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                selectedItem.imageUrl,
                fit: BoxFit.fitWidth,
              ),
            ),
            buildSectionTitle(context, 'Description'),
            buildContainer(
              SingleChildScrollView(
                child: Text(
                  selectedItem.description,
                  style: TextStyle(
                      color: Color.fromRGBO(100, 100, 100, 1), fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(itemId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => toggleFavorite(itemId),
      ),
    );
  }
}
