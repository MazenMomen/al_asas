import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

class McqExamAppBar extends StatelessWidget {
  const McqExamAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      surfaceTintColor: const Color(0xFFFFFFFF),
      floating: true,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 12 / 390),
        child: const Text(
          'الامتحان',
          style: AppStyles.medium17_3,
        ),
      ),
    );
  }
}
