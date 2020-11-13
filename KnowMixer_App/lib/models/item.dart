import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Item {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;

  const Item({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.description,
  });
}