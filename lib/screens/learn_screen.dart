import 'package:al_asas/widgets/submit_exam_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import '../widgets/learn_grid_card.dart';

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cardData = [
      {
        'subject name': S.of(context).aqidah_name,
        'book name': S.of(context).aqidah_book,
        'sheikh name': S.of(context).aqidah_sheikh,
      },
      {
        'subject name': S.of(context).tafsir_name,
        'book name': S.of(context).tafsir_book,
        'sheikh name': S.of(context).tafsir_sheikh,
      },
      {
        'subject name': S.of(context).hadith_name,
        'book name': S.of(context).hadith_book,
        'sheikh name': S.of(context).hadith_sheikh,
      },
      {
        'subject name': S.of(context).fiqh_name,
        'book name': S.of(context).fiqh_book,
        'sheikh name': S.of(context).aqidah_sheikh,
      },
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        showAdaptiveDialog(
          barrierDismissible: true,
          context: context,
          builder: (_) => SubmitExamDialog(
            yesButtonBackgroundColor:
                WidgetStateProperty.all(const Color(0xFFEC6368)),
            title: Text(
              S.of(context).exit_alert_dialog_title,
              style: AppStyles.medium22,
            ),
            content: Text(
              S.of(context).exit_alert_dialog_content,
              style: AppStyles.regular14_67,
            ),
            onPressedYes: () {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            },
          ),
        );
      },
      child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SafeArea(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: (MediaQuery.of(context).size.height -
                        MediaQuery.of(context).viewPadding.top -
                        MediaQuery.of(context).size.height * 60 / 844 -
                        MediaQuery.of(context).size.height * 20 / 844) /
                    2,
                maxCrossAxisExtent:
                    MediaQuery.of(context).size.width * 195 / 390,
              ),
              itemBuilder: (context, index) {
                return LearnGridCard(
                  subjectName: cardData[index]['subject name']!,
                  bookName: cardData[index]['book name']!,
                  sheikhName: cardData[index]['sheikh name']!,
                );
              },
              itemCount: 4,
            ),
          )),
    );
  }
}
