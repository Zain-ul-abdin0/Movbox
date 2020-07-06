import 'package:flutter/material.dart';
import 'package:moovbox/widgets/AuthScreens/Count.dart';
import 'package:moovbox/widgets/AuthScreens/LoginBtn.dart';
import 'package:moovbox/widgets/AuthScreens/TextInput.dart';
import 'package:moovbox/widgets/AuthScreens/FieldName.dart';

class Login extends StatefulWidget {
  Login(this.ScreenName);

  final String ScreenName;
 

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Login(this.ScreenName);
  // String ScreenName;
  int count = 0;
  String email = '';
  String password = '';
  String hintText = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height / 1.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                'Moovbox',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Welcome back, we missed you. Enter account details you ${widget.ScreenName}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
    
              FieldName('Email Address', false),
              TextInput(
                  hintText: 'Enter your Email',
                  email: email,
                  onChangeText: (String val) {
                    setState(() {
                      email = val;
                      print(email);
                    });
                  }),
              FieldName('Password', true),
              TextInput(
                  hintText: 'Enter Minimum 8 digit password',
                  email: email,
                  onChangeText: (String val) {
                    setState(() {
                      password = val;
                      print(password);
                    });
                  }),
              LoginBtn(),
              Text(
                'Or Log in from Facebook',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
