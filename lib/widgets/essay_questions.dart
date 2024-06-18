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
              alignment: Alignment.centerRight,
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
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF2A3E34), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(3.56)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF2A3E34), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(3.56)),
                  ),
                ),
                maxLines: 10,
              ),
            ),
          ],
        ));
  }
}
