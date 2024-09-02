import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class TextInDivider extends StatelessWidget {
  const TextInDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xFFFFFFFF),
            thickness: 1,
            endIndent: 15,
          ),
        ),
        Text(S.of(context).or,
            style: const TextStyle(
              fontFamily: 'Cairo',
              color: Color(0xFFFFFFFF),
              fontSize: 9,
              fontWeight: FontWeight.w400,
            )),
        const Expanded(
          child: Divider(
            color: Color(0xFFFFFFFF),
            thickness: 1,
            indent: 15,
          ),
        )
      ],
    );
  }
}
