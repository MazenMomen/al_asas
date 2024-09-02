import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class SubmitExamDialog extends StatelessWidget {
  final WidgetStateProperty<Color?> yesButtonBackgroundColor;
  final Widget title;
  final Widget content;
  final VoidCallback onPressedYes;

  const SubmitExamDialog({
    super.key,
    required this.yesButtonBackgroundColor,
    required this.title,
    required this.content,
    required this.onPressedYes,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
        title: title,
        content: content,
        actions: [
          ElevatedButton(
            onPressed: onPressedYes,
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.8))),
              backgroundColor: yesButtonBackgroundColor,
              foregroundColor: WidgetStateProperty.all(const Color(0xFFFFFFFF)),
            ),
            child: Text(S.of(context).alert_dialog_yes,
                style: AppStyles.medium14_5),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.8))),
              backgroundColor: WidgetStateProperty.all(const Color(0xFF67727E)),
              foregroundColor: WidgetStateProperty.all(const Color(0xFFFFFFFF)),
            ),
            child: Text(S.of(context).alert_dialog_no,
                style: AppStyles.medium14_5),
          ),
        ],
        backgroundColor: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.8),
        ));
  }
}
