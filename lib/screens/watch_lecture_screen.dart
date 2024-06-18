import 'package:al_asas/utils/app_styles.dart';
import 'package:al_asas/widgets/lecture_video.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../widgets/lecture_tabs.dart';

class WatchLectureScreen extends StatelessWidget {
  const WatchLectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LectureVideo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 43 / 844,
              child: Center(
                child: Text(
                  S.of(context).lecture_title,
                  style: AppStyles.black14,
                ),
              ),
            ),
            LectureTabs(),
          ],
        ),
      ),
    );
  }
}
