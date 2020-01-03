import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';
import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int _currentState = 0;
  // Widget callPage(int currentIndex){
  //   switch(currentIndex){
  //     case 0: return SideBar();
  //     case 1: return HomePages();
  //     case 2: return WOProfile();
  //     case 3: return Container(color: Colors.red[100],);

  //       break;
  //     default:return SideBar();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bismillah",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.red[300],
      ),
      home: SideBar(),
      //  Scaffold(
      //   body: callPage(_currentState),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _currentState,
      //     onTap: (value){
      //       _currentState=value;
      //       setState(() {
      //       });
      //     },
      //     selectedItemColor: Colors.red[300],
      //     unselectedItemColor: Colors.grey,
      //     selectedLabelStyle: TextStyle(color: Colors.red[300], fontSize: 15),
      //     unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
      //     items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home,),
      //       title: Text("Home", style: TextStyle(fontSize: 10),),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard,),
      //       title: Text("dashboard", style: TextStyle(fontSize: 10)),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today,),
      //       title: Text("booking", style: TextStyle(fontSize: 10)),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message,),
      //       title: Text("message", style: TextStyle(fontSize: 10),),
      //     ),
      //   ],
      //   ),
      // ),
    );
  }
}