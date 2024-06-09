import 'package:al_asas/widgets/sign_up_content.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../utils/app_styles.dart';
import '../widgets/login_content.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(flex: 1, child: LoginHeader()),
                Expanded(
                  flex: 4,
                  child: SignUpContent(),
                ),
                Expanded(
                  flex: 1,
                  child: LoginFooter(),
                )
              ],
            ),
          ),
        ));
  }
}
