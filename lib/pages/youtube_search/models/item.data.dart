

import 'package:flutter30dayschallenges/pages/youtube_search/models/id_data.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/snippet_data.dart';

class ItemData{
  final String kind;
  final String etag;
  final IdData id;
  final SnippetData snippet;

  ItemData({required this.snippet, required this.id, required this.kind, required this.etag});

  factory ItemData.fromJson(Map<String,dynamic> json){
    return ItemData(
        kind:  json['kind'],
        etag: json['etag'],
     id: IdData.fromJson(json['id']),
      snippet: SnippetData.fromJson(json['snippet']),
    );
  }
}