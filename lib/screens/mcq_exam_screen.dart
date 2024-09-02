import 'package:al_asas/widgets/mcq_questions.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import '../widgets/essay_questions.dart';
import '../widgets/mcq_exam_app_bar.dart';
import '../widgets/submit_exam_button.dart';
import '../widgets/submit_exam_dialog.dart';

class McqExamScreen extends StatelessWidget {
  const McqExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: CustomScrollView(
          slivers: [
            const McqExamAppBar(),
            SliverList.builder(
              itemBuilder: (context, index) {
                return McqQuestions(questionIndex: index);
              },
              itemCount: 10,
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return const EssayQuestions();
              },
              itemCount: 0,
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
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/watchLecture',
                              (route) => false,
                            );
                          },
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
