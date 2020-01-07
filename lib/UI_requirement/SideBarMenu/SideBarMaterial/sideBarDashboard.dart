import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile.dart';
import 'package:flutter_marketplace/model/wonear.dart';
import 'package:flutter_marketplace/nearbyOrganizer/widget_nearby_organizer.dart';

class SideBarDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: PageView(
              controller: PageController(viewportFraction: 1),
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    // color: Colors.redAccent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset(
                        "assets/weding_image/weding1.jpg",
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    // color: Colors.blueAccent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset(
                        "assets/weding_image/weding8.jpg",
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    // color: Colors.greenAccent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset(
                        "assets/weding_image/weding5.jpg",
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Nearby organizer",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Text("See All", style: TextStyle(color: Colors.black45))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: <Widget>[
                for (var i = 0; i < dataWO.length; i++)
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>WOProfile()));
                        },
                        child: WidgetNearbyorganizer(
                          imagePath: dataWO[i].imagePath,
                          name: dataWO[i].name,
                          description: dataWO[i].description,
                        ),
                      ),
                    ],
                  )
              ],
            ),
          ),SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "New Product",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              Text("See All", style: TextStyle(color: Colors.black45))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: <Widget>[
                for (var i = 0; i < dataWO.length; i++)
                  Column(
                    children: <Widget>[
                      WidgetNearbyorganizer(
                          imagePath: dataWO[i].imagePath,
                          name: dataWO[i].name,
                          description: dataWO[i].description,
                        ),
                    ],
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
