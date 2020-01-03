import 'package:flutter/material.dart';

class WidgetNearbyorganizer extends StatelessWidget {
  final String imagePath, name, description;
  final imageSize = 120.0;

  const WidgetNearbyorganizer(
      {Key key, @required this.imagePath, this.name, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Card(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                ),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePath,
                        width: imageSize,
                        height: imageSize,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (name != null && description != null)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6),
                        child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: name, style: TextStyle(color: Colors.black)),
                          TextSpan(text: "\n"),
                          TextSpan(
                              text: description,
                              style: TextStyle(color: Colors.black)),
                        ]),
                      )
                      )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
