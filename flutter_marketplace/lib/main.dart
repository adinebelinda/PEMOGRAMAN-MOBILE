import 'package:flutter/material.dart';
import 'LoginForm.dart';

void main(){
  runApp(MaterialApp(
    title: "Navigator",
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
                )
              ],
            ),
        ),
      );
  }
}