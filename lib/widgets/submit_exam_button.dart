import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class SubmitExamButton extends StatelessWidget {
  final String buttonChild;
  final VoidCallback onPressed;

  const SubmitExamButton({
    super.key,
    required this.buttonChild,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 132),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color(0xFFFFFFFF),
            backgroundColor: const Color(0xFF2A3E34),
            textStyle: AppStyles.bold21_6,
            padding: const EdgeInsets.symmetric(vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(41),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            buttonChild,
          ),
        ),
      ),
    );
  }
}
