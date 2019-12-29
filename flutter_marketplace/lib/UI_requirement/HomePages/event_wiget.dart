import 'package:flutter/material.dart';
import 'package:flutter_marketplace/model/event.dart';

import '../../TextStyle.dart';

class EventWidget extends StatelessWidget {

  final Event event;

  const EventWidget({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20),
      elevation: 4,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24))
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Image.asset(
                event.imagePath, 
                height: 150,
                fit: BoxFit.fitWidth, ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment : CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          event.title,
                          style: eventTitleTextStyle,
                        ),
                        SizedBox(height: 10,),
                        FittedBox(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              SizedBox(width: 5,),
                              Text(
                                event.location, textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Text(
                      event.duration.toUpperCase(),
                      textAlign: TextAlign.right, 
                      style: eventLocationTextStyle.copyWith(
                        fontWeight: FontWeight.w900,
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}