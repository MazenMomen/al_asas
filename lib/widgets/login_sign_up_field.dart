import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/app_styles.dart';

class LoginSignUpField extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final double? width;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;

  const LoginSignUpField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
    this.isObscureText,
    this.width,
    this.validator,
    this.inputFormatters,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextFormField(
        maxLines: 1,
        controller: controller,
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        inputFormatters: inputFormatters,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 10 / 390,
              vertical: 5),
          fillColor: const Color(0xFFFFFFFF),
          filled: true,
          hintText: hintText,
          hintStyle: AppStyles.regular7_64,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 15 / 844,
            minWidth: MediaQuery.of(context).size.width * 40 / 390,
          ),
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 30 / 844,
            minWidth: MediaQuery.of(context).size.width * 40 / 390,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        obscureText: isObscureText ?? false,
      ),
    );
  }
}

extension ExtensionString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = RegExp(r"^[A-Za-z]+$|^[\u0600-\u06FF]+$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#><\*~]).{8,}$');

    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+\d{2}\d{10}$");

    return phoneRegExp.hasMatch(this);
  }
}
