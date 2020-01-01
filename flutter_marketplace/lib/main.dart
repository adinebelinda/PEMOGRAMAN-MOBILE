import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentState = 0;
  Widget callPage(int currentIndex){
    switch(currentIndex){
      case 0: return SideBar();
      case 1: return HomePages();

        break;
      default:return Container(color: Colors.teal,);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bismillah",
      home: Scaffold(
        body: callPage(_currentState),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentState,
          onTap: (value){
            _currentState=value;
            setState(() {
              
            });
          },
          selectedItemColor: Colors.red[300],
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.red[300], fontSize: 15),
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            title: Text("Home", style: TextStyle(fontSize: 10),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,),
            title: Text("dashboard", style: TextStyle(fontSize: 10)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,),
            title: Text("booking", style: TextStyle(fontSize: 10)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,),
            title: Text("message", style: TextStyle(fontSize: 10),),
          ),
        ],
        ),
      ),
    );
  }
}