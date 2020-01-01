import 'package:flutter/material.dart';
import 'package:flutter_marketplace/model/event.dart';
import 'package:provider/provider.dart';

class EventDetailBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final event = Provider.of<Event>(context);



    return Align(
      alignment: Alignment.topCenter,
      child: ClipPath(
          clipper: ImageClipper(),
          child: Image.asset(
            event.imagePath,
            fit: BoxFit.cover,
            width:screenWidth,
            height: screenHeight*.5,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
          ),
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, 40);
    Offset curveEndPoint = Offset(size.width, size.height*.95);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy-5);
    path.quadraticBezierTo(size.width*.2, size.height*.85, curveEndPoint.dx-60, curveEndPoint.dy+10);
    path.quadraticBezierTo(size.width*.99, size.height*.99, curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
  
}