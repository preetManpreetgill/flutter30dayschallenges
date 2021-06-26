import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/item.data.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/youtube_search_model.dart';

  class YoutubeSearchPage extends StatefulWidget {
  const YoutubeSearchPage({Key? key}) : super(key: key);

  @override
  _YoutubeSearchPageState createState() => _YoutubeSearchPageState();
}

class _YoutubeSearchPageState extends State<YoutubeSearchPage> {

    bool _isSearch = false;
    bool _isLoading = true;
    int navIndex =0;
    List<ItemData> items =[];

    @override
    void initState(){
      super.initState();
      _loadMockDataFromAssets();
    }

    Future<void> _loadMockDataFromAssets()async {
      Future.delayed(Duration(seconds: 3),(){
        setState(() {
          _isLoading = false;
        });

      });
      final assetsData = await rootBundle.loadString("assets/youtube_search.json");
      final response = YoutubeSearchModel.fromJson(json.decode(assetsData));
      items = response.items;
      print(response.items[0].snippet.title);
      print(response.items[0].snippet.thumbnails.medium.url);
    }

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
      body:  _isLoading== true?Center(child: CircularProgressIndicator(),):ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/playVideo",arguments: items[index]);
            },
            child: Container(
              height: 280,
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey,
                      child: Image.network(items[index].snippet.thumbnails.medium.url,fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "${items[index].snippet.title}",
                      maxLines:2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    SizedBox(height: 4,),
                    Text(
                      "${items[index].snippet.channelTitle}",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            ),
          );
          }
      ),
    );
  }
}
