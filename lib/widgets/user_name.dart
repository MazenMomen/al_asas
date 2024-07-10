import 'package:flutter/widgets.dart';

import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(S.of(context).first_name_subtitle, style: AppStyles.bold14_6),
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
    );
  }
}
