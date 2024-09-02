import 'package:al_asas/widgets/essay_questions.dart';
import 'package:al_asas/widgets/submit_exam_button.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import '../widgets/essay_exam_app_bar.dart';
import '../widgets/submit_exam_dialog.dart';

class EssayExamScreen extends StatelessWidget {
  const EssayExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: CustomScrollView(
          slivers: [
            const EssayExamAppBar(),
            SliverList.builder(
              itemBuilder: (context, index) {
                return const EssayQuestions();
              },
              itemCount: 10,
            ),
            SubmitExamButton(
              buttonChild: S.of(context).submit_exam,
              onPressed: () {
                showAdaptiveDialog(
                    barrierDismissible: true,
                    context: context,
                    builder: (_) => SubmitExamDialog(
                          yesButtonBackgroundColor:
                              WidgetStateProperty.all(const Color(0xFF2A3E34)),
                          title: Text(
                            S.of(context).submit_alert_dialog_title,
                            style: AppStyles.medium22,
                          ),
                          content: Text(
                            S.of(context).submit_alert_dialog_content,
                            style: AppStyles.regular14_67,
                          ),
                          onPressedYes: () {
                            Navigator.pushNamed(context, '/watchLecture');
                          },
                        ));
              },
            )
          ],
        ));
  }
}
