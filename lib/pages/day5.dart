import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  const Day5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 5'),
      ),
      body: IndexedStack(
        index: 4,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.greenAccent,
            ),
          ),
          Positioned(
            left: 80,
            top: 80,
            bottom: 80,
            right: 80,
            child: Container(
              height: 90,
              width: 90,
              color: Colors.blueGrey,
              child: Icon(Icons.call,size: 90,),
            ),
          ),
          Positioned.fill(
            child: Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
