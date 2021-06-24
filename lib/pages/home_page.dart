import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day8.dart';

class HomePage extends StatelessWidget {
  final UserData userData;
  const HomePage({Key? key, required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Day 1'),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 90,
            width: 200,
            margin: EdgeInsets.symmetric(vertical: 200,horizontal: 100),
            padding: EdgeInsets.only(left: 10,right: 5,top: 10,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),topRight: Radius.circular(40)),
              color: Colors.red,
            ),

            child: Text(
              "userName:${userData.userName},userId:${userData.userId}",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                backgroundColor: Colors.indigo,
                decoration: TextDecoration.underline
              ),
            ),
            ),
        ),
    );
  }
}
