import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 27 / 844,
      width: MediaQuery.of(context).size.width * 284 / 390,
      child: TextFormField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 40),
              fillColor: Colors.white,
              filled: true,
              hintText: S.of(context).confirm_password_hint,
              alignLabelWithHint: true,
              hintStyle: AppStyles.regular7_64,
              prefixIcon: const Icon(Icons.remove_red_eye,
                  color: Color(0xFF717171), size: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ))),
    );
  }
}
