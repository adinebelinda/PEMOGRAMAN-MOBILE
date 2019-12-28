import 'package:flutter/material.dart';

Color mainBG = Color(0xff652a78);
Color color1 = Color(0xffde3c10);
Color color2 = Color(0xff8132ad);
Color color3 = Colors.cyan;
Color color4 = Colors.orange[900];

class HomePages extends StatefulWidget {
  HomePages({Key key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          painter: MyCustomPainter(),
                    child: Container(
                      height: 400.0,
                    ),
                  ),
          
                ),
              );
            }
          }
class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path red2Color = Path();
    red2Color.addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
    paint.color = color2;
    canvas.drawPath(red2Color, paint);

    Path red3Color =Path();
    red3Color.lineTo(size.width*.45, 0);
    red3Color.quadraticBezierTo(size.width*.4, size.height*.3, 0, size.height*.5);
    red3Color.close();
    paint.color=color3;
    canvas.drawPath(red3Color, paint);

    Path mainBGColor = Path();
    mainBGColor.moveTo(size.width*.9, 0.0);
    mainBGColor.quadraticBezierTo(size.width*.5, size.height*.4, 0, size.height*.9);
    mainBGColor.lineTo(0, size.height);
    mainBGColor.lineTo(size.width*.25, size.height);
    mainBGColor.quadraticBezierTo(size.width*.4, size.height*.75, size.width, size.height*.6);
    mainBGColor.lineTo(size.width, 0);
    mainBGColor.close();
    paint.color=Colors.red;
    canvas.drawPath(mainBGColor, paint);

    Path red4Color = Path();
    red4Color.moveTo(0, size.height*.8);
    red4Color.quadraticBezierTo(size.width*.45, size.width*.9, size.width*.3, size.height);
    red4Color.lineTo(0,size.height);
    red4Color.close();
    paint.color=color4;
    canvas.drawPath(red4Color, paint);

    Path red1Color = Path();
    red1Color.lineTo(size.width*.25, 0);
    red1Color.lineTo(0, size.height*.25);
    red1Color.close();
    paint.color = color1;
    canvas.drawPath(red1Color, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}