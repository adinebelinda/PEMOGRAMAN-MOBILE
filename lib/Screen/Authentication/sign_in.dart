import 'package:flutter/material.dart';
import 'package:flutter_marketplace/Service/auth.dart';
import 'package:flutter_marketplace/imageAsset.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //textfield state
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
                    Row(
                      children: <Widget>[
                        Spacer(),
                        GestureDetector(
                          child: Text("Forget Password?"),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext contex) {
                                  return AlertDialog(
                                      content: Form(
                                    child: Container(
                                      height: 350,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Icon(Icons.adjust),
                                          SizedBox(height: 10),
                                          Text("Reset your Password"),
                                          Divider(),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text(
                                              "Enter your user account's verified email address and we will send you a password reset link.",
                                              style: TextStyle(fontSize: 11.0)),
                                          SizedBox(height: 20.0),
                                          TextFormField(
                                            decoration: const InputDecoration(
                                                icon: Icon(Icons.email),
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                        20.0, 10.0, 20.0, 10.0),
                                                hintText: "@ E-mail",
                                                labelText: "Email *"),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          RaisedButton(
                                            onPressed: () {},
                                            child: Text("Reset Password"),
                                            color: Colors.red[300],
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Text(
                                              "*Your password will be resend to email",
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  fontStyle: FontStyle.italic))
                                        ],
                                      ),
                                    ),
                                  ));
                                });
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    RaisedButton(
                      color: Colors.red[300],
                      child: Text("Sign In",
                          style: TextStyle(color: Colors.white)),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          print('valid');
                          dynamic result = await _auth
                              .signInWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() => error = 'Akun tidak ditemukan');
                          }
                        }
                      },
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?    "),
                        InkWell(
                          child: Text("Sign Up",
                              style: TextStyle(color: Colors.blue)),
                          onTap: () {
                            widget.toggleView();
                          },
                        ),
                      ],
                    )
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
