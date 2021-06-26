import 'package:flutter/material.dart';
import 'package:flutter30dayschallenges/pages/youtube_search/models/item.data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideo extends StatefulWidget {

  final ItemData item;
  const PlayVideo({Key? key, required this.item}) : super(key: key);

  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {

  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: widget.item.id.videoId!,flags: YoutubePlayerFlags(
      mute: false,
      loop: false,
      forceHD: false,
      autoPlay: true,
      isLive: false,
    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(aspectRatio: 16/9,child: YoutubePlayer(
            controller: _youtubePlayerController,
            progressIndicatorColor: Colors.red,
          ),
          ),
          Text("${widget.item.snippet.title}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500 ),),
          Text("${widget.item.snippet.description}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500 ),),
        ],
      ),
    );
  }
}


