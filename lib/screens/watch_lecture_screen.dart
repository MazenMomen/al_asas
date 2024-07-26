import 'package:al_asas/utils/app_styles.dart';
import 'package:al_asas/widgets/access_lecture_and_quiz.dart';
import 'package:al_asas/widgets/lecture_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/cubits/youtube_player_cubit/youtube_player_cubit.dart';
import '../data/models/get_courses_model.dart';
import '../widgets/to_final_exam_button.dart';

class WatchLectureScreen extends StatelessWidget {
  final List<LectureStats> lectureStats;

  const WatchLectureScreen({
    super.key,
    required this.lectureStats,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          return Scaffold(
            body: Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: BlocBuilder<YoutubePlayerCubit, YoutubePlayerState>(
                  builder: (context, state) {
                    String videoUrl = lectureStats[0].lecture.videoLink;
                    if (state is YoutubePlayerUpdated) {
                      videoUrl = state.videoUrl;
                    }
                    return LectureVideo(videoURL: videoUrl);
                  },
                ),
              ),
            ),
          );
        } else {
          return PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              Navigator.pushNamed(context, '/bottomNavBar');
            },
            child: Scaffold(
              backgroundColor: const Color(0xFFFFFFFF),
              body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<YoutubePlayerCubit, YoutubePlayerState>(
                      builder: (context, state) {
                        String videoUrl = lectureStats[0].lecture.videoLink;
                        if (state is YoutubePlayerUpdated) {
                          videoUrl = state.videoUrl;
                        }
                        return LectureVideo(videoURL: videoUrl);
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 80 / 844,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 8),
                          child: Text(
                            lectureStats[4].lecture.name,
                            style: AppStyles.black14,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Color(0xFF2A3E34),
                      height: 1,
                    ),
                    Expanded(
                        child: CustomScrollView(
                      slivers: [
                        SliverList.separated(
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    final videoUrl =
                                        lectureStats[index].lecture.videoLink;
                                    context
                                        .read<YoutubePlayerCubit>()
                                        .updateVideoUrl(videoUrl);
                                  },
                                  child: AccessLectureAndQuiz(
                                    title: lectureStats[index].lecture.name,
                                  ),
                                ),
                                const Divider(
                                  color: Color(0xFF2A3E34),
                                  height: 1,
                                ),
                                GestureDetector(
                                  child: AccessLectureAndQuiz(
                                    title: "الاختبار ${index + 1}",
                                  ),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/mcqExam');
                                  },
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: Color(0xFF2A3E34),
                              height: 1,
                            );
                          },
                          itemCount: lectureStats.length,
                        ),
                        const SliverToBoxAdapter(
                          child: Divider(
                            color: Color(0xFF2A3E34),
                            height: 1,
                          ),
                        ),
                        const ToFinalExamButton()
                      ],
                    )),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
