import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class EssayExamAppBar extends StatelessWidget {
  const EssayExamAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      surfaceTintColor: const Color(0xFFFFFFFF),
      floating: true,
      leading: BackButton(
        color: const Color(0xFF2A3E34),
        onPressed: () {},
      ),
      title: const Text(
        'المقالي',
        style: AppStyles.medium17_3,
      ),
    );
  }
}
