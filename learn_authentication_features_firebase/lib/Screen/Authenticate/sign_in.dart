import 'package:flutter/material.dart';
import 'package:learn_authentication_features_firebase/Screen/Authenticate/register.dart';
import 'package:learn_authentication_features_firebase/Services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  //textfield state
  String email ="";
  String password ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text("Sign in Anonymous"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Register"),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0,),
              TextFormField(
                onChanged: (val){
                  setState(()=> email= val);
                },
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: Colors.pink,
                child: Text("Sign In", style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  print(email);
                  print(password);
                },
              )
            ],
          ),
        ),
        // // Sign in Annonymous
        // child: RaisedButton(
        //   child: Text("Sign In Anonymous"),
        //   onPressed: ()async{
        //     dynamic result =  await _auth.signInAnony();
        //     if(result == null){
        //       print("Error Sign In Annonymous");
        //     }else{
        //       print("Sign In Annonymous success");
        //       print(result.uid);
        //     }
        //   },
        // ),
      ),
    );
  }
}