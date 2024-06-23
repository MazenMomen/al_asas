import 'package:al_asas/utils/app_images.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class LoginFooter extends StatelessWidget {
  final double height;
  const LoginFooter({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 12 / 390),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(S.of(context).description,
              textAlign: TextAlign.center, style: AppStyles.black14),
        ));
  }
}
