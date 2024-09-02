import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../services/shared_service.dart';
import '../utils/app_styles.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 15 / 390),
      child: ElevatedButton(
        onPressed: () {
          SharedService.logout(context);
        },
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
    );
  }
}
