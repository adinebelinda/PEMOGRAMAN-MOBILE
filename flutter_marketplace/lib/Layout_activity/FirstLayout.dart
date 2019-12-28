import 'package:flutter/material.dart';

class FirstLayout extends StatefulWidget {
  FirstLayout({Key key}) : super(key: key);

  @override
  _FirstLayoutState createState() => _FirstLayoutState();
}

class _FirstLayoutState extends State<FirstLayout> {
  @override
  Widget build(BuildContext context) {
    // final title = "Halaman Utama";
    var scaffold = Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   backgroundColor: Colors.red[300],
      // ),
      body: Container(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      border: Border.all(color: Colors.red[300], width: 2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Text("DISCOVER & BOOK",style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15) ),
            Text("Weding Organizer"),
            Container(
              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: "Discover Here!",
                  prefixIcon: Icon(Icons.search),
                  ),
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.red[300], width: 2),
              ),
              child: Column(
                children: <Widget>[
                  TextFormField(
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    return scaffold;
  }
}
