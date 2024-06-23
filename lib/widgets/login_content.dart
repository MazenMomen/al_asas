import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import 'login_sign_up_field.dart';
import 'google_login_button.dart';
import 'login_button.dart';
import 'text_in_divider.dart';
import 'to_sign_up_text_button.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({
    super.key,
  });

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool isObscureText = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 25 / 390,
        vertical: MediaQuery.of(context).size.height * 20 / 844,
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
          Form(
            key: _formKey,
            child: Column(
              children: [
                Text(S.of(context).login_page, style: AppStyles.black29_38),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 20 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(S.of(context).email_subtitle,
                      style: AppStyles.regular13_5),
                ),
                LoginSignUpField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return S.of(context).email_empty;
                    } else if (!val.isValidEmail) {
                      return S.of(context).email_error;
                    }

                    return null;
                  },
                  // height: MediaQuery.of(context).size.height * 27 / 844,
                  hintText: S.of(context).email_hint,
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color(0xFF717171),
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 20 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(S.of(context).password_subtitle,
                      style: AppStyles.regular13_5),
                ),
                LoginSignUpField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return S.of(context).password_empty;
                    } else if (!val.isValidPassword) {
                      return S.of(context).password_error;
                    }

                    return null;
                  },
                  // height: MediaQuery.of(context).size.height * 27 / 844,
                  hintText: S.of(context).password_hint,
                  prefixIcon: const Icon(Icons.security,
                      color: Color(0xFF717171), size: 16),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscureText = !isObscureText;
                      });
                    },
                    icon: isObscureText
                        ? const Icon(Icons.visibility_off,
                            color: Color(0xFF717171), size: 16)
                        : const Icon(Icons.visibility,
                            color: Color(0xFF717171), size: 16),
                  ),
                  isObscureText: isObscureText,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 10 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text(S.of(context).forgot_password,
                      style: AppStyles.regular13_5),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 20 / 844,
                ),
                LoginButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/bottomNavBar');
                    }
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 20 / 844,
          ),
          const TextInDivider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          const GoogleLoginButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 25 / 844,
          ),
          ToSignUpTextButton(
            onTap: () {
              Navigator.pushNamed(context, '/signUp');
            },
          ),
        ],
      ),
    );
  }
}
