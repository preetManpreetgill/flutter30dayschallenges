import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day3.dart';
import 'package:flutter30dayschallenges/pages/day4.dart';
import 'package:flutter30dayschallenges/pages/day5.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/image_page.dart';
import 'package:flutter30dayschallenges/pages/login_page.dart';
import 'package:flutter30dayschallenges/pages/sign_up_page.dart';
import 'package:flutter30dayschallenges/pages/tik_tok_ui_example%20_of_%20stack.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TikTokUI()
    );
  }
  }





