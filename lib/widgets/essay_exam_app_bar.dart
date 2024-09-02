import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class EssayExamAppBar extends StatelessWidget {
  const EssayExamAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      backgroundColor: Color(0xFFFFFFFF),
      surfaceTintColor: Color(0xFFFFFFFF),
      floating: true,
      leading: BackButton(
        color: Color(0xFF2A3E34),
      ),
      title: Text(
        'المقالي',
        style: AppStyles.medium17_3,
      ),
    );
  }
}
