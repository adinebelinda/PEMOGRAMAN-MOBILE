import 'package:flutter/material.dart';

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
                    child: Image.asset("assets/weding_image/weding1.jpg",
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  // color: Colors.blueAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset("assets/weding_image/weding8.jpg",
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  // color: Colors.greenAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Image.asset("assets/weding_image/weding5.jpg",
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Nearby organizer",
                style: TextStyle(color: Colors.black,fontSize: 15),
              ),
              Text("See All", style: TextStyle(color: Colors.black45))
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
