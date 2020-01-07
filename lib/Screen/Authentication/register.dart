import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Service/auth.dart';
import '../../imageAsset.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  // text field register variable
  String email = "";
  String password = "";
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Register".toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 12,),
              Image.asset(iconLogo, width: 150, height: 150),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          hintText: "@ E-mail",
                          labelText: "Email *"),
                      validator: (val) => val.isEmpty ? "Enter an Email" : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          hintText: "Password",
                          labelText: "Password *"),
                      validator: (val) => val.length < 6
                          ? "Enter the password 6+ cash length"
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    RaisedButton(
                      color: Colors.red[300],
                      child: Text("Register",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(
                                () => error = 'please input a valid email!');
                          }
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
