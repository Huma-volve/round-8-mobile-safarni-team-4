import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/personal_info_cubit/personal_info_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/profile_header.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/profile_view_list_section.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PersonalInfoCubit>(
      create: (context) => getIt<PersonalInfoCubit>()..loadUserProfile(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.w(16)),
            child: Column(
              children: [
                context.gapH(62),
                const ProfileHeader(),
                context.gapH(24),
                const ProfileViewListSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
