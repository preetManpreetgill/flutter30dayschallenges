import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Day 1'),
      ),
      body: Center(child: Text('flutter 30 days challenges')),
    ),
  ));
}
