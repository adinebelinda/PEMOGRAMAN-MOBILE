import 'package:flutter/material.dart';
import 'package:flutter_marketplace/UI_requirement/EventPages/EventDetail_background.dart';
import 'package:flutter_marketplace/UI_requirement/EventPages/EventDetail_content.dart';
import 'package:flutter_marketplace/model/event.dart';
import 'package:provider/provider.dart';

class EventDetailPage extends StatelessWidget {

  final Event event;

  const EventDetailPage({Key key, this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Provider<Event>.value(
        value: event,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            EventDetailBackground(),
            EventDetailContent(),
          ],
        ),
      )
    );
  }
}