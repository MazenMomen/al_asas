import 'package:flutter/widgets.dart';

import '../utils/app_styles.dart';

class LectureTabs extends StatelessWidget {
  final String tabName;
  const LectureTabs({
    super.key,
    required this.tabName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 4,
          child: Center(
            child: Text(
              tabName,
              style: AppStyles.regular10_31,
            ),
          )),
    );
  }
}
