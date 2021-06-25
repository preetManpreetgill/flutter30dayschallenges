import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({Key? key}) : super(key: key);

  @override
  _AnimatedWidgetExampleState createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample>
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
      body: ImageAnimatedWidget(animation: _animation,),
    );

  }
}

class ImageAnimatedWidget extends AnimatedWidget{
  final Animation<double> animation;
  ImageAnimatedWidget({required this.animation}) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation= listenable as Animation<double>;
   return Transform.scale(
       scale: animation.value,
     child: Center(
       child: Icon(FontAwesome.heart),
     ),
   );

  }
  
}
