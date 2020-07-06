import 'package:flutter/material.dart';
import 'package:moovbox/widgets/AuthScreens/EmailPassword.dart';
import 'package:moovbox/widgets/AuthScreens/FieldName.dart';
import 'package:moovbox/widgets/AuthScreens/TextInput.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword(this.titlee);
  String titlee;
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          backgroundColor: Colors.black,
          title: Text(widget.titlee),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
            
              Text(
                'Moovbox',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Enter the email address you used to create your account and we will email you a link to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              Column(children: <Widget>[
                FieldName('Email Address', false),
                SizedBox(
                  height: 5,
                ),
                TextInput(
                    hintText: 'Enter your email',
                    email: email,
                    onChangeText: (String val) {
                      setState(() {
                        email = val;
                        print(email);
                      });
                    }),
              ]),
              SizedBox(height:50),
              EmailPassword(),
              Text(
                'If you dont find email in your inbox, trying looking for it in spam folder',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Color(0xffB2B2B2)),
              ),
            ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
