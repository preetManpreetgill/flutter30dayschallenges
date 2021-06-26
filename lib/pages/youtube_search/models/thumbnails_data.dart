

class ThumbnailsData{

  final String? url;

  ThumbnailsData({this.url});

  factory ThumbnailsData.fromJson(Map<String,dynamic>json){
     return ThumbnailsData(
         url: json['url'],
     );
  }
}