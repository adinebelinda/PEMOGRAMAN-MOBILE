import 'package:flutter/material.dart';

class HomePagesBackground extends StatelessWidget {

  final screenHeight;
  const HomePagesBackground({Key key, this.screenHeight}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final primaryColor = Colors.red[300];
    return ClipPath(
      clipper: BackgroundClipper(),
      child: Container(
        height: screenHeight*.5,
        color: themeData.primaryColor,
      ),
          );
        }
      }


      class BackgroundClipper extends CustomClipper<Path> {
        @override
        Path getClip(Size size) {
          Path path =Path();
          Offset curveStartPoint = Offset(0, size.height*.85);
          Offset curveEndPoint = Offset(size.width, size.height*.85);
          path.lineTo(curveStartPoint.dx, curveEndPoint.dy);
          path.quadraticBezierTo(size.width/2, size.height, curveEndPoint.dx, curveStartPoint.dy);
          path.lineTo(size.width, 0);
          return path;
        }

        @override
        bool shouldReclip(CustomClipper<Path> oldClipper) {
          return true;
        }
      }