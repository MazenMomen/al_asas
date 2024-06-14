import 'package:al_asas/utils/app_styles.dart';
import 'package:al_asas/widgets/lecture_video.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../widgets/lecture_tabs.dart';

class WatchLectureScreen extends StatelessWidget {
  const WatchLectureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lectureTabs = [
      S.of(context).lecture_tab1,
      S.of(context).lecture_tab2,
      S.of(context).lecture_tab3,
      S.of(context).lecture_tab4
    ];
    return Scaffold(
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
            const Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 43 / 844,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return LectureTabs(
                    tabName: lectureTabs[index],
                  );
                },
                itemCount: 4,
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
