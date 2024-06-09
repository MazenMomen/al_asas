import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class ToSignUpTextButton extends StatelessWidget {
  const ToSignUpTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
          text: S.of(context).to_sign_up,
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
