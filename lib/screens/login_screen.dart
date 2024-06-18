import 'package:flutter/material.dart';
import '../widgets/login_content.dart';
import '../widgets/login_footer.dart';
import '../widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: LoginHeader(),
                ),
                Expanded(
                  flex: 3,
                  child: LoginContent(),
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
