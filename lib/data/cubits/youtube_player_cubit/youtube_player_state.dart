part of 'youtube_player_cubit.dart';

abstract class YoutubePlayerState {}

class YoutubePlayerInitial extends YoutubePlayerState {}

class YoutubePlayerUpdated extends YoutubePlayerState {
  final String videoUrl;

  YoutubePlayerUpdated(this.videoUrl);
}
