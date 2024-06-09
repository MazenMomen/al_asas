import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(S.of(context).description,
              textAlign: TextAlign.center, style: AppStyles.black14),
        ));
  }
}
