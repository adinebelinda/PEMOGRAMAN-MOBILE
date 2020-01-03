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
  categoryName: 'Location',
  categoryIcon: Icons.place,
);
final special = Category(
  categoryId: 2,
  categoryName: "VIP",
  categoryIcon: Icons.star_border,
);

final rating = Category(
  categoryId: 3,
  categoryName: "Rating",
  categoryIcon: Icons.equalizer
);
final style = Category(
  categoryId: 4,
  categoryName: "Style",
  categoryIcon: Icons.style,
);

final newFeature = Category(
  categoryId: 5,
  categoryName: "New",
  categoryIcon: Icons.new_releases,
);

final promo = Category(
  categoryId: 6,
  categoryName: "Promotion",
  categoryIcon: Icons.timelapse,
);

final favorite = Category(
  categoryId: 7,
  categoryName: "Favorite",
  categoryIcon: Icons.favorite
);


final categories =[
  allCategory,
  nearLocation,
  rating,
  style,
  newFeature,
  promo,
  favorite
];
