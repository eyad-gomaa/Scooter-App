import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'custom_youtube_player.dart';

class YoutubeVideoContainer extends StatefulWidget {
  const YoutubeVideoContainer({
    Key? key,
    required this.title, required this.videoLink,

  }): super(key: key);

  final String title;
  final String videoLink;


  @override
  State<YoutubeVideoContainer> createState() => _YoutubeVideoContainerState();
}

class _YoutubeVideoContainerState extends State<YoutubeVideoContainer> {
  late YoutubePlayerController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final String? videoId = YoutubePlayer.convertUrlToId(widget.videoLink);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        disableDragSeek: true
      ),

    );

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(widget.title,style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.right),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CustomYoutubePlayer(controller: _controller),
              )
            ],
          ),
        ),
      ),
    );
  }
}

