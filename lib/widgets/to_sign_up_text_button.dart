import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class ToSignUpTextButton extends StatelessWidget {
  final VoidCallback onTap;

  const ToSignUpTextButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: S.of(context).no_account,
          style: const TextStyle(
            color: Color(0xFF717171),
            fontSize: 14.30,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w300,
          ),
        ),
        WidgetSpan(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 5 / 390,
          ),
        ),
        TextSpan(
          text: S.of(context).register_page,
          style: const TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 14.30,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w500,
          ),
        ),
      ])),
    );
  }
}
