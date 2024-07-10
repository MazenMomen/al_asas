import 'package:bloc/bloc.dart';

part 'youtube_player_state.dart';

class YoutubePlayerCubit extends Cubit<YoutubePlayerState> {
  YoutubePlayerCubit() : super(YoutubePlayerInitial());

  void updateVideoUrl(String videoUrl) {
    emit(YoutubePlayerUpdated(videoUrl));
  }
}
