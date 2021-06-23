import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Image.asset("assets/logo2.png",height: 150,width: 150,),
            SizedBox(height: 15,),
            Text("Sign Up",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                    child: Icon(FontAwesome.facebook,color: Colors.white,)),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(FontAwesome.google,color: Colors.white,)),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Icon(FontAwesome.twitter,color: Colors.white,)),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ]
              ),
                child: TextField(
                   decoration: InputDecoration(
                hintText: "Username",
                       border: InputBorder.none
              ),
            ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      spreadRadius: 2,
                      blurRadius: 2,
                    ),
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.4),
                      spreadRadius: 2,
                      blurRadius: 2,
                    ),
                  ]
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
             alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
