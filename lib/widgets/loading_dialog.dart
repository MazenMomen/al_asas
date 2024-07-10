import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: const Center(
        child: CircularProgressIndicator(
          color: Color(0xFF2A3E34),
        ),
      ),
      content: Text(
        S.of(context).please_wait,
        style: AppStyles.medium22,
        textAlign: TextAlign.center,
      ),
    );
  }
}
