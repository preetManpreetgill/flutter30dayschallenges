import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/domain/entity/list_data_entity.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class ListViewBuilderExample extends StatelessWidget {
  final data = ListEntity.listData;
   ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder Example"),
      ),
      body: ListView.separated(scrollDirection: Axis.vertical,
          itemCount: data.length,
          separatorBuilder: (context,index){
        return Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.4)
          ),
          child: Text("SeparatedBuilder"),
        );
        },
          itemBuilder: (context,index){
        return ListTile(
          leading: Container(
            height: 45,
            width: 45,
            child: Image.asset(data[index].image),
          ),
          trailing: Icon(FontAwesome.heart),
          title: Text("${data[index].title}"),
          subtitle: Text("using this app"),
        );
          }
      ),
    );
  }
}
