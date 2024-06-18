import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

class McqExamAppBar extends StatelessWidget {
  const McqExamAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      surfaceTintColor: Color(0xFFFFFFFF),
      floating: true,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'الامتحان',
          style: AppStyles.medium17_3,
        ),
      ),
    );
  }
}
