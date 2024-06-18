import 'package:al_asas/widgets/essay_questions.dart';
import 'package:flutter/material.dart';

import '../widgets/essay_exam_app_bar.dart';

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
          ],
        ));
  }
}
