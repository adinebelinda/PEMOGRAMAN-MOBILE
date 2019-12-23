import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.red[300],
      ),
      body:Container(
        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:20.0),
              Text("Register",
                style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold ),),
              SizedBox(height: 40.0),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  hintText: "@ E-mail",
                  labelText: "Email *"
                ),
              ),
              SizedBox(height:20.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  hintText: "Password",
                  labelText: "Password *"
                )
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: (){},
                child: Text("Sign Up"),
                color: Colors.red[300],
              ),
              SizedBox(height:20.0),
            ]
      ),
      )
    );
  }
}