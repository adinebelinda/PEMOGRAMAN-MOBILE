import 'package:flutter/material.dart';

class Category{
  final int categoryId;
  final String categoryName;
  final IconData categoryIcon;

  Category({this.categoryId, this.categoryName, this.categoryIcon});
}

final allCategory = Category(
  categoryId: 0,
  categoryName: 'All',
  categoryIcon: Icons.search,
);

final nearLocation = Category(
  categoryId: 1,
  categoryName: 'Near Location',
  categoryIcon: Icons.place,
);

final categories =[
  allCategory,
  nearLocation,
];
