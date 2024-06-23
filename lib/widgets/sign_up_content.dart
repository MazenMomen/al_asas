import 'package:al_asas/widgets/sign_up_button.dart';
import 'package:al_asas/widgets/to_login_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import 'login_sign_up_field.dart';
import 'google_login_button.dart';
import 'text_in_divider.dart';

class SignUpContent extends StatefulWidget {
  const SignUpContent({
    super.key,
  });

  @override
  State<SignUpContent> createState() => _SignUpContentState();
}

class _SignUpContentState extends State<SignUpContent> {
  bool isObscureText = true;
  bool isObscureConfirmation = true;

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 25 / 390,
        vertical: MediaQuery.of(context).size.height * 10 / 844,
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
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
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
                  prefixIcon: const Icon(Icons.person,
                      color: Color(0xFF717171), size: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 5 / 844,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Align(
                //           child: Text(S.of(context).first_name_subtitle,
                //               style: AppStyles.regular13_5),
                //         ),
                //         LoginSignUpField(
                //           inputFormatters: <TextInputFormatter>[
                //             FilteringTextInputFormatter.allow(
                //               RegExp(r"[a-zA-Z\u0600-\u06FF]+"),
                //             ),
                //           ],
                //           validator: (val) {
                //             if (val!.isEmpty) {
                //               return S.of(context).name_empty;
                //             } else if (!val.isValidName) {
                //               return S.of(context).name_error;
                //             }

                //             return null;
                //           },
                //           width: MediaQuery.of(context).size.width * 128 / 390,
                //           hintText: S.of(context).first_name_hint,
                //           prefixIcon: const Icon(Icons.person,
                //               color: Color(0xFF717171), size: 16),
                //         ),
                //       ],
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Align(
                //           child: Text(S.of(context).last_name_subtitle,
                //               style: AppStyles.regular13_5),
                //         ),
                //         LoginSignUpField(
                //           inputFormatters: <TextInputFormatter>[
                //             FilteringTextInputFormatter.allow(
                //               RegExp(r"[a-zA-Z\u0600-\u06FF]+"),
                //             ),
                //           ],
                //           validator: (val) {
                //             if (val!.isEmpty) {
                //               return S.of(context).name_empty;
                //             } else if (!val.isValidName) {
                //               return S.of(context).name_error;
                //             }

                //             return null;
                //           },
                //           width: MediaQuery.of(context).size.width * 128 / 390,
                //           hintText: S.of(context).last_name_hint,
                //           prefixIcon: const Icon(Icons.person,
                //               color: Color(0xFF717171), size: 16),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 5 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(S.of(context).password_subtitle,
                      style: AppStyles.regular13_5),
                ),
                LoginSignUpField(
                  controller: _passwordController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return S.of(context).password_empty;
                    } else if (!val.isValidPassword) {
                      return S.of(context).password_error;
                    }

                    return null;
                  },
                  // height: MediaQuery.of(context).size.height * 85 / 844,
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
                  height: MediaQuery.of(context).size.height * 5 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(S.of(context).confirm_password_subtitle,
                      style: AppStyles.regular13_5),
                ),
                LoginSignUpField(
                  controller: _confirmPasswordController,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return S.of(context).confirm_password_empty;
                    }
                    if (val != _passwordController.text) {
                      return S.of(context).confirm_password_error;
                    }
                    return null;
                  },
                  // height: MediaQuery.of(context).size.height * 27 / 844,
                  hintText: S.of(context).confirm_password_hint,
                  prefixIcon: const Icon(Icons.security,
                      color: Color(0xFF717171), size: 16),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscureConfirmation = !isObscureConfirmation;
                      });
                    },
                    icon: isObscureConfirmation
                        ? const Icon(Icons.visibility_off,
                            color: Color(0xFF717171), size: 16)
                        : const Icon(Icons.visibility,
                            color: Color(0xFF717171), size: 16),
                  ),
                  isObscureText: isObscureConfirmation,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 5 / 844,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(S.of(context).mobile_number_subtitle,
                      style: AppStyles.regular13_5),
                ),
                LoginSignUpField(
                  inputFormatters: <TextInputFormatter>[
                    // add a regex to allow only numbers and plus sign
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9+]')),
                  ],
                  validator: (val) {
                    if (val!.isEmpty) {
                      return S.of(context).mobile_number_empty;
                    } else if (!val.isValidPhone) {
                      return S.of(context).mobile_number_error;
                    }

                    return null;
                  },
                  // height: MediaQuery.of(context).size.height * 45 / 844,
                  hintText: S.of(context).mobile_number_hint,
                  prefixIcon: const Icon(Icons.phone_android,
                      color: Color(0xFF717171), size: 16),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 10 / 844,
                ),
                SignUpButton(
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
            height: MediaQuery.of(context).size.height * 5 / 844,
          ),
          const TextInDivider(),
          const GoogleLoginButton(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 10 / 844,
          ),
          ToLoginTextButton(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
