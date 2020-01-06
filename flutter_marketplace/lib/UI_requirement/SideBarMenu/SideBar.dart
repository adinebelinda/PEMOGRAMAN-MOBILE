import 'package:flutter/material.dart';
import 'package:flutter_marketplace/LoginForm.dart';
import 'package:flutter_marketplace/UI_requirement/HomePages/HomePages.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBarMaterial/sideBarDashboard.dart';
// import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile.dart';
import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile_Material/details_organizer.dart';
import 'SideBarMaterial/sidebarMenu.dart';

void main(){
  runApp(MaterialApp(
    title: "Navigator",
    home: SideBar(),
  ));
}

final Color backgroundColor = Colors.red[300];
final Color navBGColor = Colors.red[100];

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  int _currentState = 0;
  Widget callPage(int currentIndex){
    switch(currentIndex){
      case 0: return Stack(
          children: <Widget>[
            menu(context),
            dashboard(context),
          ],
        );
      case 1: return HomePages();
      case 2: return DetailsOrganizer();
      case 3: return Container(color: Colors.red[100],);

        break;
      default:return Stack(
          children: <Widget>[
            menu(context),
            dashboard(context),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
        backgroundColor: backgroundColor,
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
            title: Text("Dashboard", style: TextStyle(fontSize: 10)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today,),
            title: Text("Booking", style: TextStyle(fontSize: 10)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message,),
            title: Text("Message", style: TextStyle(fontSize: 10),),
          ),
        ],
        ),
      );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child:
                Align(alignment: Alignment.topLeft, child: SideBarMenu())),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : screenWidth * .6,
      right: isCollapsed ? 0 : screenWidth * (-0.2),
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: isCollapsed
              ? BorderRadius.circular(0)
              : BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: Colors.white,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              // physics: ClampingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          child: Icon(Icons.menu,),
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();

                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        Text("Discovery And Book",
                            style:
                                TextStyle(fontSize: 16, )),
                        InkWell(
                          child: Icon(Icons.settings, ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
                          },
                          ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SideBarDashboard(),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}