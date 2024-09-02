import 'package:al_asas/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class LectureTabs extends StatelessWidget {
  LectureTabs({
    super.key,
  });

  final isSelected = <bool>[true, false, false, false];

  @override
  Widget build(BuildContext context) {
    final List<String> tabNames = [
      S.of(context).lecture_tab1,
      S.of(context).lecture_tab2,
      S.of(context).lecture_tab3,
      S.of(context).lecture_tab4
    ];
    return ToggleButtons(
      direction: Axis.horizontal,
      borderWidth: 0,
      borderColor: const Color(0xFFFFFFFF),
      selectedBorderColor: const Color(0xFFFFFFFF),
      fillColor: const Color(0xFFFFFFFF),
      splashColor: const Color(0xFFFFFFFF),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 48 / 844,
        maxHeight: MediaQuery.of(context).size.height * 48 / 844,
        minWidth: MediaQuery.of(context).size.width / tabNames.length,
        maxWidth: MediaQuery.of(context).size.width / 4,
      ),
      isSelected: isSelected,
      onPressed: (index) {
        Navigator.pushNamed(context, '/mcqExam');
      },
      children: [
        for (int i = 0; i < isSelected.length; i++)
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isSelected[i]
                      ? const Color(0xFF2A3E34)
                      : const Color(0xFF000000),
                  width: isSelected[i] ? 3 : 0,
                ),
                top: const BorderSide(
                  color: Color(0xFF000000),
                  width: 0,
                ),
              ),
            ),
            alignment: AlignmentDirectional.center,
            child: Text(
              tabNames[i],
              style: AppStyles.regular10_31,
            ),
          ),
      ],
    );
  }
}
