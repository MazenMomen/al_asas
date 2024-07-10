import 'package:al_asas/data/repositories/get_courses_repo.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class ToFinalExamButton extends StatelessWidget {
  const ToFinalExamButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color(0xFFFFFFFF),
              backgroundColor: const Color(0xFF2A3E34),
              textStyle: AppStyles.medium17_3,
              padding: EdgeInsetsDirectional.symmetric(
                vertical: MediaQuery.of(context).size.height * 4 / 844,
                horizontal: MediaQuery.of(context).size.width * 16 / 390,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(41),
              ),
            ),
            child: Text(
              S.of(context).final_exam,
            ),
          ),
        ),
      ),
    );
  }
}
