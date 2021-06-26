import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/day10/animated_builder_example.dart';
import 'package:flutter30dayschallenges/pages/day10/animated_widget_example.dart';
import 'package:flutter30dayschallenges/pages/day10/simple_animation_example.dart';
import 'package:flutter30dayschallenges/pages/day10/simple_basic_animation.dart';
import 'package:flutter30dayschallenges/pages/day11/animated_drawer_home.dart';
import 'package:flutter30dayschallenges/pages/day11/simple_drawer_home.dart';
import 'package:flutter30dayschallenges/pages/day8.dart';
import 'package:flutter30dayschallenges/pages/grid_view_example.dart';
import 'package:flutter30dayschallenges/pages/home_page.dart';
import 'package:flutter30dayschallenges/pages/list_view_builder_example.dart';
import 'package:flutter30dayschallenges/pages/list_view_example.dart';
import 'package:flutter30dayschallenges/pages/login_page.dart';
import 'package:flutter30dayschallenges/pages/page_view_builder_example.dart';
import 'package:flutter30dayschallenges/pages/sign_up_page.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/item.data.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/play_video.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/youtube_search_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    if (settings.name == "/") {
      return MaterialPageRoute(builder: (context) => YoutubeSearchPage());
    } else if(settings.name=="/playVideo") {
      if (args is ItemData) {
        return MaterialPageRoute(builder: (context) => PlayVideo(item: args,));
      }else{
        return MaterialPageRoute(
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
    else if (settings.name == "/signUpPage") {
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
