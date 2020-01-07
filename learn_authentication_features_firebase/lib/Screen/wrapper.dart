
import 'package:flutter/material.dart';
import 'package:learn_authentication_features_firebase/Screen/Authenticate/authentication.dart';
import 'package:learn_authentication_features_firebase/Screen/Home/home.dart';
import 'package:learn_authentication_features_firebase/model/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if(user==null){
      return Authentication();
    }else{
      return Home();
    }
  }
}