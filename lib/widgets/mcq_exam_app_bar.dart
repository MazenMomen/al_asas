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
      leading: IconButton(
        icon: const Icon(Icons.close),
        color: const Color(0xFF2A3E34),
        onPressed: () {},
      ),
      title: const Text(
        'الامتحان',
        style: AppStyles.medium17_3,
      ),
    );
  }
}
