import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class SubmitExamDialog extends StatelessWidget {
  const SubmitExamDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
        title: Text(
          S.of(context).alert_dialog_title,
          style: AppStyles.medium22,
        ),
        content: Text(
          S.of(context).alert_dialog_content,
          style: AppStyles.regular14_67,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.8))),
              backgroundColor: WidgetStateProperty.all(const Color(0xFF2A3E34)),
              foregroundColor: WidgetStateProperty.all(const Color(0xFFFFFFFF)),
            ),
            child: Text(S.of(context).alert_dialog_yes,
                style: AppStyles.medium14_5),
          ),
          ElevatedButton(
            onPressed: () {},
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.8),
        ));
  }
}
