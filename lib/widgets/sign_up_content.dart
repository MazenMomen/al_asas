import 'package:al_asas/widgets/confirm_password_field.dart';
import 'package:al_asas/widgets/mobile_number_field.dart';
import 'package:al_asas/widgets/sign_up_button.dart';
import 'package:al_asas/widgets/to_login_text_button.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import 'email_field.dart';
import 'google_login_button.dart';
import 'login_button.dart';
import 'password_field.dart';
import 'text_in_divider.dart';
import 'to_sign_up_text_button.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 42 / 390,
        vertical: MediaQuery.of(context).size.height * 21 / 844,
      ),
      width: MediaQuery.of(context).size.width * 340 / 390,
      decoration: ShapeDecoration(
        color: const Color(0xFF2A3E34),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(72.67),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 15.04,
            offset: Offset(0, 0),
            spreadRadius: 7.27,
          )
        ],
      ),
      child: Column(
        children: [
          Text(S.of(context).register_page, style: AppStyles.black29_38),
          SizedBox(
            height: MediaQuery.of(context).size.height * 20 / 844,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(S.of(context).email_subtitle,
                style: AppStyles.regular13_5),
          ),
          const EmailField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(S.of(context).password_subtitle,
                style: AppStyles.regular13_5),
          ),
          const PasswordField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(S.of(context).confirm_password_subtitle,
                style: AppStyles.regular13_5),
          ),
          const ConfirmPasswordField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(S.of(context).mobile_number_subtitle,
                style: AppStyles.regular13_5),
          ),
          const MobileNumberField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 20 / 844,
          ),
          const SignUpButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 20 / 844,
          ),
          const TextInDivider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 5 / 844,
          ),
          const GoogleLoginButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 20 / 844,
          ),
          const ToLoginTextButton(),
        ],
      ),
    );
  }
}
