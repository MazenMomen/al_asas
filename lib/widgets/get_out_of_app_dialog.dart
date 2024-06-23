import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import 'submit_exam_dialog.dart';

class GetOutOfAppDialog extends StatelessWidget {
  final Widget child;
  const GetOutOfAppDialog({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          showAdaptiveDialog(
            barrierDismissible: true,
            context: context,
            builder: (_) => SubmitExamDialog(
              yesButtonBackgroundColor:
                  WidgetStateProperty.all(const Color(0xFFEC6368)),
              title: Text(
                S.of(context).exit_alert_dialog_title,
                style: AppStyles.medium22,
              ),
              content: Text(
                S.of(context).exit_alert_dialog_content,
                style: AppStyles.regular14_67,
              ),
              onPressedYes: () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              },
            ),
          );
        },
        child: child);
  }
}
