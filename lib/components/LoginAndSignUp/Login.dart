import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login(this.name);

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'Welcome back, we missed you. Enter account details you $name',
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
          TextInput('Enter your Email'),
          FieldName('Password', true),
          TextInput('Enter minimum 8 digit password'),
          LoginBtn(),
          Text(
            'Or Log in from Facebook',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class TextInput extends StatelessWidget {
  TextInput(this.hintText);
  String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: MediaQuery.of(context).size.width / 1.1,
      child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintStyle: TextStyle(fontSize: 12.0, color: Color(0xffB2B2B2)),
              hintText: hintText,
              focusColor: Colors.white,
              filled: true,
              fillColor: Color(0xff333333))),
    );
  }
}

class FieldName extends StatelessWidget {
  FieldName(this.name, this.check);
  String name;
  bool check;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffB2B2B2),
              ),
            ),
            check == true?
              
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF0058),
                  ),
                )
              :Text('xsom')
              
          ],
        ),
      ),
    );
  }
}

class LoginBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 42,
      child: FlatButton(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Color(0xffFF0058),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          /*...*/
        },
        child: Text(
          "Login",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
