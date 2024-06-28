import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AccessLectureAndQuiz extends StatelessWidget {
  const AccessLectureAndQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 40 / 844,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(
                start: 16, end: 8, top: 8, bottom: 8),
            child: Icon(
              Icons.check_circle,
              color: Color(0xFF2A3E34),
            ),
          ),
          RichText(
            text: const TextSpan(style: AppStyles.extraBold10_31, children: [
              TextSpan(
                text: '',
              ),
              WidgetSpan(
                  child: SizedBox(
                width: 8,
              )),
              TextSpan(text: '|'),
              WidgetSpan(
                  child: SizedBox(
                width: 8,
              )),
              TextSpan(text: ''),
            ]),
          )
        ],
      ),
    );
  }
}
