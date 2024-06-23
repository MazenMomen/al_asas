import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        iconColor: const Color(0xFFFFFFFF),
        minimumSize: Size(
          MediaQuery.of(context).size.width * 172 / 390,
          MediaQuery.of(context).size.height * 30 / 844,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(S.of(context).login_button, style: AppStyles.extraBold10_31),
    );
  }
}
