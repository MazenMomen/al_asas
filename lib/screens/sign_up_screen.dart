import 'package:al_asas/widgets/get_out_of_app_dialog.dart';
import 'package:al_asas/widgets/sign_up_content.dart';
import 'package:flutter/material.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_header.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetOutOfAppDialog(
      child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LoginHeader(
                      height: MediaQuery.of(context).size.height * 1 / 8,
                    ),
                    const SignUpContent(),
                    LoginFooter(
                      height: MediaQuery.of(context).size.height * 1 / 6,
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
