import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Screen/Authentication/authentication.dart';
import 'package:flutter_marketplace/UI_requirement/SideBarMenu/SideBar.dart';
import 'package:flutter_marketplace/model/User_model/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if(user==null){
      return Authentication();
    }else{
      return SideBar();
    }
  }
}