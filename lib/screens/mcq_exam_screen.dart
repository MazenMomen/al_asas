import 'package:al_asas/widgets/mcq_questions.dart';
import 'package:flutter/material.dart';

import '../widgets/mcq_exam_app_bar.dart';

class McqExamScreen extends StatelessWidget {
  const McqExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: CustomScrollView(
          slivers: [
            const McqExamAppBar(),
            SliverList.builder(
              itemBuilder: (context, index) {
                return const McqQuestions();
              },
              itemCount: 10,
            ),
          ],
        ));
  }
}
