import 'package:flutter/material.dart';
import 'package:flutter_marketplace/TextStyle.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/CategoryState.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages_background.dart';
import 'package:flutter_marketplace/model/category.dart' as prefix0;
import 'package:provider/provider.dart';
import '../../model/category.dart';
import 'CategoryWidget.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<CategoryState>(
        create: (_) =>CategoryState(),
        child: Stack(
          children: <Widget>[
            HomePagesBackground(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Discover & Book",
                            style: fadedTextStyle,
                          ),
                          Spacer(),
                          Icon(
                            Icons.person,
                            color:Colors.white60,
                            size:30.0,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Weding Organizer",
                        style: whiteHeadingTextStyle, 
                        textAlign: TextAlign.left,
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<CategoryState>(
                        builder: (context, categoryState,_) => SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              for(final category in categories) CategoryWidget(category: category,), // looping to get data from category model
                            ],
                          )
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: <Widget>[
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}