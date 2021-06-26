


import 'dart:convert';

import 'package:flutter30dayschallenges/pages/youtube_search/models/item.data.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/page_info_data.dart';

class YoutubeSearchModel{
  final String kind;
  final String etag;
  final String nextPageToken;
  final String regionCode;
  final PageInfoData pageInfo;
  final List<ItemData> items;

  YoutubeSearchModel({
    required this.items, 
    required this.pageInfo,
    required this.kind,
    required this.etag,
    required this.nextPageToken,
    required this.regionCode
  });

  factory YoutubeSearchModel.fromJson(Map<String,dynamic>Json){
    final items =Json['items']as List;
    List<ItemData> itemData = items.map((singleItem) => ItemData.fromJson(singleItem)).toList();
    return YoutubeSearchModel(
      etag: Json['etag'],
      kind: Json['kind'],
      nextPageToken: Json['nextPageToken'],
      regionCode: Json['regionCode'],
      pageInfo: PageInfoData.fromJson(Json['pageInfo']), 
      items: itemData,
    );
  }

}