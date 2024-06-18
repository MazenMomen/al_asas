import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class McqQuestions extends StatelessWidget {
  const McqQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    String? currentOption = 'value 0';

    return Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 10 / 844,
          right: MediaQuery.of(context).size.width * 25 / 390,
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
            for (int i = 0; i < 4; i++)
              RadioListTile.adaptive(
                title: Text(
                  "اختيار ${i + 1}",
                  style: AppStyles.semiBold11_9,
                ),
                value: "value $i",
                groupValue: currentOption,
                onChanged: (value) {
                  currentOption = value;
                },
                activeColor: const Color(0xFF2A3E34),
                contentPadding: const EdgeInsets.all(0),
              ),
          ],
        ));
  }
}
