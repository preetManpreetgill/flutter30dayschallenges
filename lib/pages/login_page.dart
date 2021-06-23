
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40,),
            Container(
              height: 140,
                width: 140,
                child: Image.asset("assets/file.png")),
            SizedBox(height: 20,),
            Text("Login to your Account",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 3)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username or Email"
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25,),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 3)
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password"
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              width: double.infinity,
              child: Text('Login',style: TextStyle(fontSize: 20),),
            ),
            SizedBox(height: 20,),
            Text('I forgot my password',style: TextStyle(fontSize: 18,color: Colors.blue),),
          ],
        ),
      ),
    );
  }
}

