import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:fluttericon/font_awesome_icons.dart';

class SimpleBasicAnimation extends StatefulWidget {
  const SimpleBasicAnimation({Key? key}) : super(key: key);

  @override
  _SimpleBasicAnimationState createState() => _SimpleBasicAnimationState();
}

class _SimpleBasicAnimationState extends State<SimpleBasicAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =AnimationController(
      duration: Duration(microseconds: 1500),
        vsync: this,
    );
    final animationCurve =CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInExpo,
      reverseCurve: Curves.easeIn
    );
    _animation = Tween<double>(begin: 0,end: 10).animate(_animationController)
    ..addListener(()
    {setState(() {}); })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed){
          _animationController.reverse();
        }else if (status == AnimationStatus.dismissed){
          _animationController.forward();
        }

      });
    _animationController.forward();
    super.initState();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.scale(
        scale: _animation.value,
          child: Center(
          child: Container(
            height: 150,
              width: 150,
              child:Icon(FontAwesome.upload),
          ),
      ),
      ),
    );
  }
}
