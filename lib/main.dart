import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day3.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/image_page.dart';
import 'package:flutter30dayschallenges/pages/login_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
  }





