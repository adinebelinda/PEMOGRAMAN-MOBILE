import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Screen/Authentication/register.dart';
import 'package:flutter_marketplace/Screen/Authentication/sign_in.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  bool showSignIn=true;
  void toggleView(){
    setState(() => showSignIn =!showSignIn);
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleView: toggleView);
    }else{
      return Register(toggleView: toggleView);
    }
  }
}