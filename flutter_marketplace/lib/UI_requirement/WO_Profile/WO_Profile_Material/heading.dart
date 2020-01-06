import 'package:flutter/material.dart';

class HeadingOrganizer extends StatelessWidget {
  final String heading;

  const HeadingOrganizer({Key key, @required this.heading}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(heading, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),),
      
    );
  }
}