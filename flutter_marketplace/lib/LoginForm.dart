import 'package:flutter/material.dart';
import 'SignUpForm.dart';

void main(){
  runApp(MaterialApp(
    title: "Navigator",
    home: LoginForm(),
  ));
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
        backgroundColor: Colors.red[300],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:20.0),
              Text("Weding Organizer",
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
              SizedBox(height:20.0),
              Text("forget password?"),
              SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: (){},
                child: Text("Sign In"),
                color: Colors.red[300],
              ),
              SizedBox(height:20.0),
              Text("Sign in With Social Account"),
              SizedBox(height:20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Icon(Icons.ac_unit),
                  ),
                  Expanded(
                    child: Icon(Icons.ac_unit),
                  ),
                  Expanded(
                    child: Icon(Icons.ac_unit),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: <Widget>[
                  Text("Don't have an account?    "),
                  GestureDetector(
                    child: Text("Sign Up", 
                      style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)
                      ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpForm()));
                    })
                ],
              )
          ],),
        ),
      );
  }
}
