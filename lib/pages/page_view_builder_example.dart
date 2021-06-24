import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/domain/entity/list_data_entity.dart';

class PageViewBuilderExample extends StatelessWidget {
  const PageViewBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView BuilderExample"),
      ),
      body: PageView.builder(
        itemCount: ListEntity.listData.length,
          itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.teal
            ),
            child: Center(child: Text("page: ${ListEntity.listData[index].title}")),
          );
          }
      ),
    );
  }
}
