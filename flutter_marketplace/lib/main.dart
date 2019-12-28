import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Layout_activity/FirstLayout.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages.dart';
import 'LoginForm.dart';

void main(){
  runApp(MaterialApp(
    title: "Navigator",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.red[300],
    ),
    home: NavigatorMenu(),
  ));
}

class NavigatorMenu extends StatelessWidget {
  const NavigatorMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Weding Organizer NavigatorMenu ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold ),
                ),
                SizedBox(height:40.0),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>LoginForm()));
                  },
                  child: Text("Login Form"),
                  color: Colors.red[300],
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePages()));
                  },
                  child: Text("Home Page"),
                  color: Colors.red[300],
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstLayout()));
                  },
                  child: Text("First Layout"),
                  color: Colors.red[300],
                )
              ],
            ),
        ),
      );
  }
}