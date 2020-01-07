import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';
import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile_Material/details_organizer.dart';
// import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile_Material/heading.dart';
import 'package:flutter_marketplace/UI_requirement/WO_Profile/WO_Profile_Material/rounded_image_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_marketplace/TextStyle.dart';

import '../../imageAsset.dart';

class WOProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoheight = screenHeight * .4;

    return Scaffold(
      body: Stack(children: <Widget>[
        Transform.translate(
          offset: Offset(screenWidth * .4, 10),
          child: Transform.rotate(
            angle: -0.2,
            child: SvgPicture.asset(bgWo,
                height: logoheight, color: logoTintColor),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SideBar()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: primaryTextColor,
                      ),
                    ),
                    Text(
                      "Organizer Profile",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.transparent,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          RoundedImageWidget(
                            imagePath: owner1,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "GGWP WO\n",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "Jhon Franklyn Group\n\n",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                WidgetSpan(
                                    child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                )),
                                TextSpan(
                                    text: "3.0",
                                    style: TextStyle(color: Colors.black))
                              ]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Constumer",
                                style: hoursPlayedLabelTextSyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "256 Users",
                            style: hoursPlayerTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Verification"),
                            Text("Sertification"),
                            Text("Extra"),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: DetailsOrganizer(),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
