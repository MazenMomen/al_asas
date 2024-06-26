import 'package:flutter/material.dart';
import '../widgets/get_out_of_app_dialog.dart';
import '../widgets/login_content.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                      height: MediaQuery.of(context).size.height * 1 / 6,
                    ),
                    const LoginContent(),
                    LoginFooter(
                      height: MediaQuery.of(context).size.height * 1 / 5,
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
