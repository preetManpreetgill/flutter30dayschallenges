import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day3.dart';
import 'package:flutter30dayschallenges/pages/day4.dart';
import 'package:flutter30dayschallenges/pages/day5.dart';
import 'package:flutter30dayschallenges/pages/day6.dart';
import 'package:flutter30dayschallenges/pages/day7.dart';
import 'package:flutter30dayschallenges/pages/day8.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/image_page.dart';
import 'package:flutter30dayschallenges/pages/login_page.dart';
import 'package:flutter30dayschallenges/pages/on_generate_route.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
     // routes: {
       // "/Day8": (context) => Day8(),
       // "/":(context) => HomePage(data: "Welcome to day 8",),
        //"/login": (context) => LoginPage(),
        //"/signUpPage": (context) => SignUpPage(),
       // "/Day7": (context) => Day7(),
      //},
      onGenerateRoute: OnGenerateRoute.route,
      debugShowCheckedModeBanner: false,
      //home: MyStatefulWidget()
    );
  }
}





