import 'package:flutter/material.dart';

class AnimatedDrawerHome extends StatefulWidget {
  const AnimatedDrawerHome({Key? key}) : super(key: key);

  @override
  _AnimatedDrawerHomeState createState() => _AnimatedDrawerHomeState();
}

class _AnimatedDrawerHomeState extends State<AnimatedDrawerHome>
    with SingleTickerProviderStateMixin{
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(microseconds: 300),
        vsync: this,
    );
    super.initState();
  }

  void startAnimation(){
    if(_animationController.isDismissed){
      _animationController.forward();
    }else {
      _animationController.reverse();
    }
  }
  @override
  Widget build(BuildContext context) {
    final rideSide = MediaQuery.of(context).size.width *0.4;
    return AnimatedBuilder(animation: _animationController, builder: (context,child) {
      return Stack(
        children: <Widget>[
          _drawerWidget(),
          Transform(alignment: Alignment.center,
              transform: Matrix4.identity()
                ..translate(rideSide * _animationController.value)
                ..scale(1-(_animationController.value * 0.3)), child: _bodyWidget()),
        ],
      );
    });
  }

  Widget _bodyWidget(){
    return Scaffold(
      body: Column(
        children: <Widget>[
          _header(),
        ],
      ),
    );
  }

  Widget _drawerWidget(){
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[200],
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
                InkWell(onTap: (){
                  startAnimation();
                },child: Icon(Icons.menu)),
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
