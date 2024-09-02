import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFFFFF),
        minimumSize: Size(
          MediaQuery.of(context).size.width * 172 / 390,
          MediaQuery.of(context).size.height * 30 / 844,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(S.of(context).register_page, style: AppStyles.extraBold10_31),
    );
  }
}
