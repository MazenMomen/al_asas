import 'package:al_asas/data/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:al_asas/widgets/get_out_of_app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../generated/l10n.dart';
import '../widgets/error_dialog.dart';
import '../widgets/learn_grid_card.dart';
import '../widgets/loading_dialog.dart';
import 'watch_lecture_screen.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cardData = [
      {
        'subject name': S.of(context).hadith_name,
        'book name': S.of(context).hadith_book,
        'sheikh name': S.of(context).hadith_sheikh,
      },
      {
        'subject name': S.of(context).tafsir_name,
        'book name': S.of(context).tafsir_book,
        'sheikh name': S.of(context).tafsir_sheikh,
      },
      {
        'subject name': S.of(context).aqidah_name,
        'book name': S.of(context).aqidah_book,
        'sheikh name': S.of(context).aqidah_sheikh,
      },
      {
        'subject name': S.of(context).fiqh_name,
        'book name': S.of(context).fiqh_book,
        'sheikh name': S.of(context).aqidah_sheikh,
      },
    ];

    return GetOutOfAppDialog(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SafeArea(
          child: BlocConsumer<GetCoursesCubit, GetCoursesState>(
            listener: (context, state) {
              if (state is GetCoursesLoading) {
                showAdaptiveDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) => const LoadingDialog(),
                );
              } else if (state is GetCoursesError) {
                Navigator.of(context).pop(); // Dismiss the loading dialog
                showAdaptiveDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) => ErrorDialog(
                    message: S.of(context).error_dialog_title,
                  ),
                );
              } else if (state is GetCoursesSuccess) {
                Navigator.of(context).pop(); // Dismiss the loading dialog
                final cubit = context.read<GetCoursesCubit>();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WatchLectureScreen(
                      lectureStats: state.response.data
                          .courseStat[cubit.selectedIndex].lectureStats,
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).viewPadding.top -
                          MediaQuery.of(context).size.height * 60 / 844 -
                          MediaQuery.of(context).size.height * 65 / 844) /
                      2,
                  maxCrossAxisExtent:
                      MediaQuery.of(context).size.width * 195 / 390,
                ),
                itemBuilder: (context, index) {
                  return LearnGridCard(
                    subjectName: cardData[index]['subject name']!,
                    bookName: cardData[index]['book name']!,
                    sheikhName: cardData[index]['sheikh name']!,
                    onTap: () {
                      context.read<GetCoursesCubit>().getCourses(index);
                    },
                  );
                },
                itemCount: 4,
              );
            },
          ),
        ),
      ),
    );
  }
}
