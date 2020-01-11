import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Screen/wrapper.dart';
import 'package:flutter_marketplace/Service/auth.dart';
import 'package:flutter_marketplace/model/User_model/user.dart';
import 'package:provider/provider.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: "Bismillah",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.red[300],
        ),
        home: Wrapper(),
      ),
    );
  }
}