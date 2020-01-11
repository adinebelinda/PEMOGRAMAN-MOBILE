import 'package:flutter/material.dart';
import 'package:flutter_marketplace/model/event.dart';
import 'package:flutter_marketplace/model/guest.dart';
import 'package:provider/provider.dart';

import '../../TextStyle.dart';

class EventDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .2),
          child: Text(
            event.title,
            style: eventTitleWhiteTextStyle,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * .25),
            child: FittedBox(
              child: Row(
                children: <Widget>[
                  Text(
                    "-",
                    style: eventLocationTextStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(event.location,
                      style: eventLocationTextStyle.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ))
                ],
              ),
            )
          ),
          SizedBox(height: 80,),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text("CONSTUMER", style:guestTextStyle),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final guest in guests)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: ClipOval(
                      child: Image.asset(
                        guest.imagePath,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,),
                    ),
                  )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left:16, top: 20),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text:event.punchLine1, style: punchLine1TextStyle),
                  TextSpan(text: event.punchLine2, style: punchLine2TextStyle)]
              ),
            )
          ),
          if(event.description.isNotEmpty)
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(event.description, style: TextStyle(fontSize: 15, )),
            ),
          if(event.galleryImages.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("COLLECTION",style: guestTextStyle,),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                for(final galleryImagePath in event.galleryImages)
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 16, 8,32),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        galleryImagePath,
                        width:80,
                        height:80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text("Fasilitas",style: guestTextStyle,),
          ),SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Type", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),),
                      Text("Regular", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),),
                      Text("VIP", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Decoration")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Documentation")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Music & sound")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Food & drink")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Transportation")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Place")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Fotograp")),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Wedding dress")),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            child: Text("Price"))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.close, color: Colors.grey),
                          Icon(Icons.close, color: Colors.grey),
                          Icon(Icons.close, color: Colors.grey),
                          Icon(Icons.close, color: Colors.grey),
                          SizedBox(height: 10,),
                          RaisedButton(
                            onPressed: (){},
                            color: Colors.red[300],
                            child: Text("Rp. 10Jt",style: TextStyle(color: Colors.white),)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          Icon(Icons.check, color: Colors.red[300]),
                          SizedBox(height: 10,),
                          RaisedButton(
                            onPressed: (){},
                            color: Colors.red[300],
                            child: Text("Rp. 35Jt", style: TextStyle(color: Colors.white),)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    )
    );
  }
}
