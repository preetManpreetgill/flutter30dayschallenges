import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/domain/entity/list_data_entity.dart';

class GridViewBuilder extends StatelessWidget {
  final data = ListEntity.listData;
   GridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: data.length,
          itemBuilder: (context,index){
            return Card(
              color: Colors.teal,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 150,
                        width: 150,
                        child: Image.asset(data[index].image)),
                    Text("${data[index].title}"),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
