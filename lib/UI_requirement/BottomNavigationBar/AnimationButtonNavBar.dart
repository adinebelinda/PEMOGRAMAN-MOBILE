import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Layout_activity/HomePages/HomePage.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';

class AnimationButtomNavBar extends StatefulWidget {
  @override
  _AnimationButtomNavBarState createState() => _AnimationButtomNavBarState();
}

class _AnimationButtomNavBarState extends State<AnimationButtomNavBar> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    SideBar(),
    HomePage()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: _children[_currentIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red[300],
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.red[300], fontSize: 15),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
        onTap: onTappedBar,
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
    );
  }
}




// bottomNavigationBar: CurvedNavigationBar(
      //   items: <Widget>[
      //     Icon(Icons.home,size:20,),
      //     Icon(Icons.location_city,size:20,),
      //     Icon(Icons.date_range,size:20,),
      //     Icon(Icons.chat_bubble_outline,size:20,),
      //     Icon(Icons.share,size:20,),
      //   ],
      //   onTap:(index){
      //     debugPrint("current index is $index");
      //   },
      // ),