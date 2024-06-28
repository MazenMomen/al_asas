import 'dart:ui';

import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

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
            CircleAvatar(
              radius: MediaQuery.of(context).size.height * 50 / 390,
              backgroundColor: const Color(0xFF2A3E34),
              child: Icon(
                Icons.person,
                size: MediaQuery.of(context).size.height * 50 / 390,
                color: const Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 50 / 844),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(S.of(context).first_name_subtitle,
                        style: AppStyles.bold14_6),
                    const Text(
                      "فلان",
                      style: AppStyles.regular14_6,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(S.of(context).last_name_subtitle,
                        style: AppStyles.bold14_6, textAlign: TextAlign.start),
                    const Text(
                      "علان",
                      style: AppStyles.regular14_6,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 25 / 390),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 10 / 844,
                      horizontal: MediaQuery.of(context).size.width * 40 / 390,
                    ),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.8),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xFFEC6368),
                  ),
                  foregroundColor: WidgetStateProperty.all(
                    const Color(0xFFFFFFFF),
                  ),
                ),
                child: Text(
                  S.of(context).logout_button,
                  style: AppStyles.bold21_6,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
