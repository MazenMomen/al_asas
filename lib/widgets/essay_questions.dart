import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class EssayQuestions extends StatelessWidget {
  const EssayQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 10 / 390,
          vertical: MediaQuery.of(context).size.height * 10 / 844,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.56),
          border: Border.all(
            color: const Color(0xFF2A3E34),
          ),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 25 / 390,
          vertical: MediaQuery.of(context).size.height * 10 / 844,
        ),
        child: Column(
          children: [
            const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                'سؤال',
                style: AppStyles.bold12_51,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 10 / 844),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'أدخل الإجابة هنا',
                  hintStyle: AppStyles.regular10_31,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF717171), width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF2A3E34), width: 1.5),
                  ),
                ),
                minLines: 1,
                maxLines: 10,
                maxLength: 1000,
              ),
            ),
          ],
        ));
  }
}
