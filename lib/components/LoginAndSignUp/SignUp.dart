import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp(this.name);

  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        
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
        
          
          FieldName('Full Name'),
          TextInput('Enter Full Name'),
          FieldName('Email Address'),
          TextInput('Enter your email'),


          FieldName('Password'),
          TextInput('Enter minimum 8 digit password'),
          FieldName('Confirm Password'),
          TextInput('Repeat your password'),

          LoginBtn(),
          Text(
            'By clicking Create Account you agree to the following Terms and Conditions without reservation',
                        textAlign: TextAlign.center,

            style: TextStyle( fontSize: 13, color: Color(0xffB2B2B2)),
          ),
        
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
      width: MediaQuery.of(context).size.width / 1.1,
      height: 42,
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
  FieldName(this.name,);
  String name;
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
          "Create Account",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
