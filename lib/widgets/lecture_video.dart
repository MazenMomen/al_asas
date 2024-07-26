import 'package:al_asas/utils/app_styles.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

class LectureVideo extends StatefulWidget {
  final String videoURL;

  const LectureVideo({
    super.key,
    required this.videoURL,
  });

  @override
  State<LectureVideo> createState() => _LectureVideoState();
}

class _LectureVideoState extends State<LectureVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _initializeController(widget.videoURL);
  }

  void _initializeController(String videoURL) {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    )..addListener(() {
        if (_controller.value.isReady) {
          setState(() {});
        }
      });
  }

  @override
  void didUpdateWidget(covariant LectureVideo oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoURL != widget.videoURL) {
      _controller.load(YoutubePlayer.convertUrlToId(widget.videoURL)!);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressColors: const ProgressBarColors(
          playedColor: Color(0xFFFFFFFF),
          handleColor: Color(0xFF2A3E34),
        ),
        progressIndicatorColor: const Color(0xFF2A3E34),
        topActions: [
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: AppStyles.black16,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
        bottomActions: [
          CurrentPosition(),
          ProgressBar(isExpanded: true),
          RemainingDuration(),
          const SizedBox(width: 8),
          const PlaybackSpeedButton(),
          FullScreenButton(),
        ],
      ),
      builder: (context, player) {
        return player;
      },
    );
  }
}
