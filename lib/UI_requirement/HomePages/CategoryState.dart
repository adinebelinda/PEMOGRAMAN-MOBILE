import 'package:flutter/material.dart';

class CategoryState extends ChangeNotifier{

  int selectedCategoryId=0;

  void updateCategoryId(int selectedCategoryId){
    this.selectedCategoryId = selectedCategoryId;
    notifyListeners();
  }
}