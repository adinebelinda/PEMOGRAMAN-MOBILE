import 'package:flutter/material.dart';
import 'package:learn_authentication_features_firebase/Screen/Authenticate/register.dart';
import 'package:learn_authentication_features_firebase/Screen/Authenticate/sign_in.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn );
  }

  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn();
    }else{
      return Register();
    }
  }
}