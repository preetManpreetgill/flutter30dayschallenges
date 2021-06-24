import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView(
        reverse: true,
        children: <Widget>[
          ListTile(
            trailing: Icon(FontAwesome.heart),
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
            ),
            title: Text("Heading Text"),
            subtitle: Text("sub heading"),
          ),
          ListTile(
            trailing: Icon(FontAwesome.heart),
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
            ),
            title: Text("eTech"),
            subtitle: Text("Hi there i'm using this app"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("heading widget or simple text"),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 40,
              decoration: BoxDecoration(color: Colors.blueGrey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit involuptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sintoccaecat cupidatat non proident, sunt in culpa qui officia deserunt mollitanim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex eacommodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
