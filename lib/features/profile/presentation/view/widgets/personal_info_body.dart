import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/personal_info_cubit/personal_info_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/personal_info_item.dart';

class PersonalInfoBody extends StatelessWidget {
  const PersonalInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
      builder: (context, state) {
        if (state is PersonalInfoLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is PersonalInfoFailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.error_outline, size: 48, color: Colors.red),
                context.gapH(16),
                Text(state.errorMessage),
              ],
            ),
          );
        }

        if (state is PersonalInfoSuccess) {
          final userProfile = state.userProfile;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  context.gapH(32),
                  PersonalInfoItem(
                    label: 'Name',
                    value: userProfile.fullName,
                    icon: Icons.person_outline,
                  ),
                  PersonalInfoItem(
                    label: 'Email',
                    value: userProfile.email,
                    icon: Icons.email_outlined,
                  ),
                ],
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
