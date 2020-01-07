import 'package:flutter/material.dart';
import 'package:learn_authentication_features_firebase/Screen/wrapper.dart';
import 'package:learn_authentication_features_firebase/Services/auth.dart';
import 'package:learn_authentication_features_firebase/model/user.dart';
import 'package:provider/provider.dart';
import 'model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
