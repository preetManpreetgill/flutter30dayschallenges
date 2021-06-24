import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day8.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/login_page.dart';
import 'package:flutter30dayschallenges/pages/sign_up_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    if (settings.name == "/") {
      return MaterialPageRoute(builder: (context) => Day8());
    } else if (settings.name == "/signUpPage") {
      return MaterialPageRoute(builder: (context) => SignUpPage());
    } else if (settings.name == "/login") {
      return MaterialPageRoute(builder: (context) => LoginPage());
    } else if (settings.name == "/HomePage") {
      if (args is UserData)
        return MaterialPageRoute(
            builder: (context) => HomePage(userData: args));
      else
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('error'),
                  ),
                  body: Center(
                    child: Text("Error"),
                  ),
                ));
    } else {
      MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text('error'),
                ),
                body: Center(
                  child: Text("Error"),
                ),
              ));
    }
  }
}
