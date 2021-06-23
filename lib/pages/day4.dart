import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';



class Day4 extends StatelessWidget {
  int age= 10;
  String name= "my age is:";
  double salary = 7000;
  bool isLight = false;
  num value = 58454.76437;
  var digit = "dfhdg";
  final x= 54648;
  static const double pi= 3.14;


  Day4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 4'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Icon(FontAwesome.amazon,size: 80,color: Colors.blue,)
          ),
          Text("$name $age,salary $salary,isLight $isLight"),
        ],
      ),
    );
  }
}
