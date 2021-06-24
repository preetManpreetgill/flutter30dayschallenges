import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/sign_up_page.dart';


class UserData{
  final String userName;
  final String userId;

  UserData(this.userName, this.userId);
}

class Day8 extends StatelessWidget {
  const Day8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 8"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/signUpPage",);
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                },
              child: Text("Sign Up"),
            ),
            SizedBox(height: 15,),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/login",);
                },
              child: Text("Sign In"),
            ),
            SizedBox(height: 15,),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/HomePage", arguments: UserData("eTech", "1"));
              //  Navigator.push(context, MaterialPageRoute(
                    //builder: (context) => HomePage(data: "Welcome to day 8")));
              },
              child: Text("Home page"),
            ),

          ],
        ),
      ),
    );
  }
}
