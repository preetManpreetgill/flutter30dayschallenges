import 'package:flutter/material.dart';

class SimpleHomeDrawer extends StatelessWidget {
  const SimpleHomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    accountName: Text("eTechMode",style: TextStyle(fontSize: 18,color: Colors.white),),
                    accountEmail: Text("etechmode123@gmail.com"),
                    currentAccountPicture: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      ),
                    ),
                  )
              ),
              _drawerItem(title: "Activity", iconData: Icons.add_shopping_cart_outlined ),
              _drawerItem(title: "Edit User Profile", iconData: Icons.edit),
              _drawerItem(title: "Contact", iconData: Icons.add_call),
              _drawerItem(title: "Logout", iconData: Icons.exit_to_app),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          _header(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 250,
      width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.menu),
                Text("Day11",style: TextStyle(fontSize: 20,color: Colors.white),),
                Icon(Icons.notifications_none_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _drawerItem({required String title,required IconData iconData}){
    return ListTile(
      title: Text(title,style: TextStyle(fontSize: 16,color: Colors.white),),
      leading: Icon(iconData),
    );
  }
}
