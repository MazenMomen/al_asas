import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../widgets/logout_button.dart';
import '../widgets/profile_picture.dart';
import '../widgets/user_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 20,
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Text(
                  S.of(context).profile_header,
                  style: AppStyles.extraBold19,
                ),
              ),
            ),
            Divider(
              color: const Color(0xFF2A3E34),
              thickness: 1.5,
              height: MediaQuery.of(context).size.height * 40 / 844,
            ),
            const ProfilePicture(),
            SizedBox(height: MediaQuery.of(context).size.height * 50 / 844),
            const UserName(),
            const Spacer(),
            const LogoutButton(),
            const Divider(
              color: Color(0xFF2A3E34),
              thickness: .7,
              height: 10,
            ),
            Text(S.of(context).visit_website_for_acc_details,
                style: AppStyles.regular10_31),
            SizedBox(height: MediaQuery.of(context).size.height * 25 / 844),
          ],
        ),
      )),
    );
  }
}
