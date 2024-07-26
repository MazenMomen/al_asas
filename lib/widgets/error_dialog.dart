import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class ErrorDialog extends StatelessWidget {
  final String message;
  const ErrorDialog({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: const Color(0xFFFFFFFF),
      title: const Center(
        child: Icon(
          Icons.warning,
          color: Color(0xFFEC6368),
          size: 50,
        ),
      ),
      content: Text(
        message,
        style: AppStyles.semiBold22,
        textAlign: TextAlign.center,
      ),
      actions: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.8))),
              backgroundColor: WidgetStateProperty.all(const Color(0xFF67727E)),
              foregroundColor: WidgetStateProperty.all(const Color(0xFFFFFFFF)),
            ),
            child: Text(S.of(context).error_dialog_button,
                style: AppStyles.medium14_5),
          ),
        ),
      ],
    );
  }
}
