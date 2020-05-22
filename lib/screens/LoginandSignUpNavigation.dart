import 'package:flutter/material.dart';
import 'package:moovbox/components/LoginAndSignUp/Login.dart';
import 'package:moovbox/components/LoginAndSignUp/SignUp.dart';

class LoginAndSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              backgroundColor: Colors.black,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 270,
                    child: TabBar(
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Color(0xFFFF0058),
                        labelColor: Color(0xFFFF0058),
                        tabs: [
                          Tab(
                            child: Text("Login"),
                          ),
                          Tab(
                            child: Text("Create Account"),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
               Login('Login'),
              
               SignUp( 'SignUp'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}