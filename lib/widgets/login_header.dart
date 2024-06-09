import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Center(
            child: Text(S.of(context).title, style: AppStyles.regular49_41)));
  }
}
