import 'package:al_asas/utils/app_styles.dart';
import 'package:al_asas/widgets/access_lecture_and_quiz.dart';
import 'package:al_asas/widgets/lecture_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../generated/l10n.dart';
import '../widgets/lecture_tabs.dart';
import '../widgets/to_final_exam_button.dart';

class WatchLectureScreen extends StatelessWidget {
  const WatchLectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.landscape) {
        return const Scaffold(
          body: FittedBox(fit: BoxFit.fitHeight, child: LectureVideo()),
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
                  const LectureVideo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 80 / 844,
                    child: const Center(
                      child: Text(
                        "التفسير | المحاضرة الأولى",
                        style: AppStyles.black14,
                      ),
                    ),
                  ),
                  // LectureTabs(),
                  const Divider(
                    color: Color(0xFF67727E),
                    height: 1,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return const Column(
                            children: [
                              AccessLectureAndQuiz(),
                              Divider(
                                color: Color(0xFF67727E),
                                height: 1,
                              ),
                              AccessLectureAndQuiz(),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            color: Color(0xFF67727E),
                            height: 1,
                          );
                        },
                        itemCount: 10),
                  ),
                  const Divider(
                    color: Color(0xff717171),
                    height: 1,
                  ),

                  const ToFinalExamButton()
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
