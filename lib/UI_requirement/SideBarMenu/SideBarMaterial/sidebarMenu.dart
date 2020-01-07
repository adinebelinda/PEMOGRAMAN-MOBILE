import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Service/auth.dart';


class SideBarMenu extends StatelessWidget {
  
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipOval(
                      child: Image.asset("assets/guest_image/guest1.jpg",
                      fit: BoxFit.cover
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Benjamin Linus", style: TextStyle(
                    color: Colors.white
                  ),)
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.person_outline, color: Colors.white,),
                SizedBox(width: 10,),
                Text("Profile", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.notifications_none, color: Colors.white,),
                SizedBox(width: 10,),
                Text("Notification", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.chat, color: Colors.white),
                SizedBox(width: 10,),
                Text("Message", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.swap_horiz, color: Colors.white),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){},
                  child: Text("Funds Transfer", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18))),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(Icons.bookmark_border, color: Colors.white),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){},
                  child: Text("BookMark", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18))),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 90),
              child: Row(
                children: <Widget>[
                  Icon(Icons.exit_to_app, color: Colors.white,),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: ()async{
                      await _auth.signOut();
                    },
                    child: Text("Log Out", style: TextStyle( color: Colors.white, fontWeight:FontWeight.bold, fontSize: 18)))
                ],
              ),
            )
          ],
        );
  }
}
