import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 3'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.red,
          ),
          Container(
            height: 60,
            width: 60,
            color: Colors.indigo,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                color: Colors.blueGrey,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.red,
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.indigo,
              ),
            ],
          )
        ],
      ),
    );
  }
}
