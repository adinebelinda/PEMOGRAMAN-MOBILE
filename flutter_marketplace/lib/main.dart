import 'package:flutter/material.dart';
// import 'package:flutter_marketplace/LoginForm.dart';
import 'package:flutter_marketplace/Screen/wrapper.dart';
import 'package:flutter_marketplace/Service/auth.dart';
import 'package:flutter_marketplace/model/User_model/user.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget {
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

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Bismillah",
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         primaryColor: Colors.red[300],
//       ),
//       home: LoginForm(),
//     );
//   }
// }

