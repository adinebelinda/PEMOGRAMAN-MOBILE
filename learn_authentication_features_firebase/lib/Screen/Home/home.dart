import 'package:flutter/material.dart';
import 'package:learn_authentication_features_firebase/Services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red[200],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Log Out"),
            onPressed: () async{
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}