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
              SizedBox(height:10.0),
              Row(children: <Widget>[
                Spacer(),
                GestureDetector(
                  child: Text("Forget Password?"),
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext contex){
                        return AlertDialog(
                          content: Form(
                            child: Container(
                              height: 350,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(Icons.adjust),
                                  SizedBox(height: 10),
                                  Text("Reset your Password"),
                                  Divider(),
                                  SizedBox(height: 20.0,),
                                  Text("Enter your user account's verified email address and we will send you a password reset link.", style: TextStyle(fontSize:11.0)),
                                  SizedBox(height: 20.0),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      icon: Icon(Icons.email),
                                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                      hintText: "@ E-mail",
                                      labelText: "Email *"
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  RaisedButton(
                                    onPressed: (){},
                                    child: Text("Reset Password"),
                                    color: Colors.red[300],
                                  ),
                                  SizedBox(height: 5.0,),
                                  Text("*Your password will be resend to email", style: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic))

                                ],
                              ),
                          ),
                        )
                        );
                      }
                    );
                  },
                )
              ],
              ),
              SizedBox(height: 10.0,),
              RaisedButton(
                onPressed: (){
                  // action
                },
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
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: <Widget>[
                  Text("Don't have an account?    "),
                  GestureDetector(
                    child: Text("Sign Up", 
                      style: TextStyle( color: Colors.blue)
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
