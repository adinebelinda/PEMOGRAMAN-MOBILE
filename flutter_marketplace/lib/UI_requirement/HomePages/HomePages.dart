import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages_background.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePagesBackground(
            screenHeight: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}