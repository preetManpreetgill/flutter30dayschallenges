import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class YoutubeSearchPage extends StatefulWidget {
  const YoutubeSearchPage({Key? key}) : super(key: key);

  @override
  _YoutubeSearchPageState createState() => _YoutubeSearchPageState();
}

class _YoutubeSearchPageState extends State<YoutubeSearchPage> {

    bool _isSearch = false;
    int navIndex =0;

    Widget _searchWidget(){
      return Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                _isSearch = false;
              });
            },
              child: Icon(Icons.arrow_back)),
          SizedBox(width: 5,),
          Expanded(
            child: Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.black.withOpacity(.2),
              ),

                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "search Youtube",
                    border: InputBorder.none,
                  ),
                )),
          ),
          SizedBox(width: 5,),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(.1),
            ),
              child: Icon(Icons.mic)),
        ],
      );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearch== true?_searchWidget(): Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 20,
                child: Image.asset("assets/youtube_logo.png")),
            Row(
              children: <Widget>[
                SizedBox(width: 8,),
                Icon(Icons.notifications_none_outlined),
                SizedBox(width: 8,),
                InkWell( onTap: (){
                  if(_isSearch == false){
                    setState(() {
                      _isSearch = true;
                    });
                  }
                  },
                child: Icon(Icons.search)),
                SizedBox(width: 8,),
                Container(
                  height: 28,
                  width: 28,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(28)),
                      child: Image.asset("assets/etechviral.png")),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: navIndex,
        onTap: (index){
         setState(() {
           navIndex = index;
         });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money),label: "Subscription"),
          BottomNavigationBarItem(icon: Icon(Icons.wysiwyg),label: "Library"),
        ],
      ),
      body:  ListView.builder(
        itemCount: 8,
          itemBuilder: (context,index){
          return Container(
            height: 280,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Center(
                      child: Text("thumb Image"),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Text("Title",maxLines:2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                  SizedBox(height: 4,),
                  Text(" Channel Title",
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
          );
          }
      ),
    );
  }
}
