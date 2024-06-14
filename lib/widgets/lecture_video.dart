import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class LectureVideo extends StatefulWidget {
  const LectureVideo({super.key});

  @override
  State<LectureVideo> createState() => _LectureVideoState();
}

class _LectureVideoState extends State<LectureVideo> {
  final videoURL = 'https://youtu.be/UOqZGK-1c_M?si=cE1chgJy-qqwhIN9';

  late YoutubePlayerController _controller;

  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: const Color(0xFF2A3E34),
      progressColors: const ProgressBarColors(
        playedColor: Color(0xFF2A3E34),
        handleColor: Color(0xFF2A3E34),
      ),
      bottomActions: [
        CurrentPosition(),
        ProgressBar(isExpanded: true),
        RemainingDuration(),
        const PlaybackSpeedButton(),
        FullScreenButton(),
      ],
    );
  }
}
