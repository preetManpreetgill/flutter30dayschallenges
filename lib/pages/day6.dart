import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 6"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Counter value: $value",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: () {
                increment();

              } ,
              child: Icon(Icons.add) ,
            ),
            SizedBox(height: 15,),
            RaisedButton(
              onPressed: () {
                decrement();
              } ,
              child: Icon(Icons.remove) ,
            ),
            SizedBox(height: 20,),
            containerButton(),
          ],
        ),
      ),
    );
  }
  void increment(){
    setState(() {
      value+=1;
    });
  }
  void decrement(){
    setState(() {
      value-=1;
    });
  }

  Widget containerButton(){
    return InkWell(
      onTap: (){
        setState(() {
          value+=2;
        });
        },
      child: Container(
        height: 70,
        width: 270,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(70))
        ),
        child:  Text("Double increment"),
      ),
    );
  }
}
