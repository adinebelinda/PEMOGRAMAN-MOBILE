import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/CategoryState.dart';
import 'package:provider/provider.dart';
import '../../TextStyle.dart';
import '../../model/category.dart';

class CategoryWidget extends StatelessWidget {

  final Category category;

  const CategoryWidget({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryState = Provider.of<CategoryState>(context);
    final isSelected = categoryState.selectedCategoryId ==category.categoryId;

    return GestureDetector(
      onTap: (){
        if(!isSelected){
          categoryState.updateCategoryId(category.categoryId);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.red[200] : Color(0x9fffffff), width: 2),
          borderRadius: BorderRadius.circular(10),
          color: isSelected? Colors.white : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              category.categoryIcon,
              color: isSelected? Colors.red[300] : Colors.white,
              size: 30,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              category.categoryName,
              style:isSelected ? selectedCategoryTextStyle: categoryTextStyle ,
            )
          ],
        ),
      ),
    );
  }
}