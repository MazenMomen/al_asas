import 'package:al_asas/data/cubits/mcq_cubit/mcq_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/app_styles.dart';

class McqQuestions extends StatelessWidget {
  final int questionIndex;

  const McqQuestions({super.key, required this.questionIndex});

  @override
  Widget build(BuildContext context) {
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
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'سؤال',
              style: AppStyles.bold12_51,
            ),
          ),
          BlocBuilder<McqCubit, McqState>(
            builder: (context, state) {
              return Column(
                children: [
                  for (int i = 0; i < 4; i++)
                    RadioListTile.adaptive(
                      title: Text(
                        "اختيار ${i + 1}",
                        style: AppStyles.semiBold11_9,
                      ),
                      value: i,
                      groupValue: state.getOption(questionIndex),
                      onChanged: (value) {
                        context
                            .read<McqCubit>()
                            .chooseMcq(questionIndex, value!);
                      },
                      activeColor: const Color(0xFF2A3E34),
                      contentPadding: const EdgeInsets.all(0),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
