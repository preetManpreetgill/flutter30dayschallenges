

import 'package:flutter30dayschallenges/pages/youtube_search/models/thumbnails_data.dart';

class Thumbnails{

  final ThumbnailsData medium;
  final ThumbnailsData high;

  Thumbnails({required this.medium, required this.high});

  factory Thumbnails.fromJson(Map<String,dynamic>json){
    return Thumbnails(
      medium: ThumbnailsData.fromJson(json['medium']),
      high: ThumbnailsData.fromJson(json['high']),
    );
  }

}