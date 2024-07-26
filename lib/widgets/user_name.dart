import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/cubits/user_data_cubit/user_data_cubit.dart';
import '../generated/l10n.dart';
import '../utils/app_styles.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataCubit, UserDataState>(
      builder: (context, state) {
        if (state is UserDataLoaded) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(S.of(context).first_name_subtitle,
                      style: AppStyles.bold14_6),
                  Text(
                    state.userData.firstName,
                    style: AppStyles.regular14_6,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(S.of(context).last_name_subtitle,
                      style: AppStyles.bold14_6, textAlign: TextAlign.start),
                  Text(
                    state.userData.lastName,
                    style: AppStyles.regular14_6,
                  ),
                ],
              ),
            ],
          );
        } else if (state is UserDataLoading) {
          return const CircularProgressIndicator();
        } else {
          return const Text('Unable to load user data');
        }
      },
    );
  }
}
