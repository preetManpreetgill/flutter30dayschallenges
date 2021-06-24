import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  const Day7({Key? key}) : super(key: key);

  @override
  _Day7State createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  String data ="";
  double h = 100;
  double w = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              color: Colors.teal,
              width: w,
                transform: Matrix4.rotationZ(h),
                height: h,
                curve: Curves.bounceOut,
                duration: Duration(milliseconds:600),
            ),
            Text("data =$data"),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                call();
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                alignment: Alignment.center,
                child: Text("Click Me"),
              ),
            )
          ],
        ),
      ),
    );
  }
  void call(){
    setState(() {
      h+=50;
      w+=50;
      data ="call method execute , 2nd calculate ${calculate(10, 15)}";
    });

  }
  int calculate(int num1,int num2){
    return num1+num2;
  }
}
