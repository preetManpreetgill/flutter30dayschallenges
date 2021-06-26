

import 'package:flutter30dayschallenges/pages/youtube_search/models/thumbnails.dart';

class SnippetData{
 final String? publishedAt;
 final String? channelId;
 final String? title;
 final String? description;
 final String? channelTitle;
 final String? liveBroadcastContent;
 final String? publishTime;
 final Thumbnails? thumbnails;

  SnippetData({this.thumbnails,
      this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.channelTitle,
      this.liveBroadcastContent,
      this.publishTime});

  factory SnippetData.fromJson(Map<String,dynamic>json){
    return SnippetData(
      publishedAt: json['publishesAt'],
      channelId: json['channelId'],
      title: json['title'],
      description: json['description'],
      channelTitle: json['channelTitle'],
      liveBroadcastContent: json['liveBroadcastContent'],
      publishTime: json['publishTime'],
      thumbnails: Thumbnails.fromJson(json['thumbnails']),
    );
  }
}