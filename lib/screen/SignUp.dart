import 'package:flutter/material.dart';

import 'package:moovbox/widgets/AuthScreens/LoginBtn.dart';
import 'package:moovbox/widgets/AuthScreens/TextInput.dart';
import 'package:moovbox/widgets/AuthScreens/FieldName.dart';

class SignUp extends StatefulWidget {
  SignUp(this.ScreenName);

  final String ScreenName;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //SignUp(this.ScreenName);

  //String ScreenName;

  String email = '';
  String password = '';

  String fullName = '';
  String confirmPassword = '';

  String hintText = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height / 1.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
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
            FieldName('Full Name', false),
            TextInput(
                hintText: 'Enter your full name',
                email: email,
                onChangeText: (String val) {
                  setState(() {
                    fullName = val;
                    print(fullName);
                  });
                }),
            FieldName('Email Address', false),
            TextInput(
                hintText: 'Enter your email address',
                email: email,
                onChangeText: (String val) {
                  setState(() {
                    email = val;
                    print(email);
                  });
                }),
            FieldName('Password', false),
            TextInput(
                hintText: 'Enter Minimum 8 digit password',
                email: email,
                onChangeText: (String val) {
                  setState(() {
                    password = val;
                    print(password);
                  });
                }),
            FieldName('Confirm Password', false),
            TextInput(
                hintText: 'Repeat your password',
                email: email,
                onChangeText: (String val) {
                  setState(() {
                    confirmPassword = val;
                    print(confirmPassword);
                  });
                }),
            LoginBtn(),
            Text(
              'By clicking Create Account you agree to the following Terms and Conditions without reservation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Color(0xffB2B2B2)),
            ),
          ],
        ),
      ),
    );
  }
}
