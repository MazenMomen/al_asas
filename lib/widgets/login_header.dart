import 'package:al_asas/utils/app_images.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeader extends StatelessWidget {
  final double height;
  const LoginHeader({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Center(
            child: SvgPicture.asset(
          Assets.imagesLogoGreen,
          height: MediaQuery.of(context).size.height * 80 / 844,
        )));
  }
}
