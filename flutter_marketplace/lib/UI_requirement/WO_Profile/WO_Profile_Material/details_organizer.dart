import 'package:flutter/material.dart';

class DetailsOrganizer extends StatefulWidget {
  @override
  _DetailsOrganizerState createState() => _DetailsOrganizerState();
}

class _DetailsOrganizerState extends State<DetailsOrganizer> {
  bool visibilityVerification = true;
  bool visibilitySertification = true;
  bool visibilityExtra = true;

  void _changed(bool visibility, String field){
    setState(() {
      if(field == 'verification'){
        visibilityVerification = visibility;
      }
      if(field == 'sertification'){
        visibilitySertification = visibility;
      }
      if(field == 'extra'){
        visibilityExtra = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                visibilitySertification ? Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 11,
                      child: TextField(
                        maxLines: 1,
                        style: Theme.of(context).textTheme.title,
                        decoration: InputDecoration(
                          labelText: "veification",
                          isDense: true
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.cancel),
                        onPressed: (){
                          _changed(false, "verification");
                        },
                      ),
                    )
                  ]
                )
                : Container()
              ]
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: (){
                  visibilitySertification ? null : _changed(true, "sertification");
                },
                child: Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.local_offer, color: visibilitySertification ? Colors.grey[400] : Colors.grey[600]),
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text("Sertification", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: visibilitySertification? Colors.grey[400] : Colors.grey[600]),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 24,),
              InkWell(
                onTap: (){
                  
                },
              )
            ],
          )
        ],
      ),
    );
  }
}