import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
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
    _animation = Tween<double>(begin: 0,end: 50).animate(_animationController)
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
      body: Row(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context,index){
              return Transform.translate(
                offset: Offset(0,_animation.value),
                child: Center(
                  child: Icon(FontAwesome.heart,size: 70,color: Colors.teal ,),
                ),
              );
            }
          ),
          AnimatedBuilder(
              animation: _animation,
              builder: (context,index){
                return Transform.translate(
                  offset: Offset(0,_animation.value),
                  child: Center(
                    child: Icon(FontAwesome.heart,size: 70,color: Colors.blue,),
                  ),
                );
              }
          ),
        ],
      ),

    );
  }
}
