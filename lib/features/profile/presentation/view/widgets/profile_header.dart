import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/personal_info_cubit/personal_info_cubit.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
      builder: (context, state) {
        String userName = 'User';
        String userEmail = 'email@example.com';

        if (state is PersonalInfoSuccess) {
          userName = state.userProfile.fullName;
          userEmail = state.userProfile.email;
        }

        return Column(
          children: [
            Stack(
              children: [
                Container(
                  height: context.h(100),
                  width: context.h(100),
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xff3F52B4), Color(0xffB22459)],
                    ),
                  ),
                  child: CircleAvatar(
                    radius: context.w(50),
                    backgroundImage: AssetImage(AssetsPaths.profileImage),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(AssetsPaths.cameraIcon),
                  ),
                ),
              ],
            ),
            context.gapH(8),
            Text(
              userName,
              style: AppTextStyles.font14Black90w600(
                context,
              ).copyWith(fontSize: context.sp(16)),
            ),
            context.gapH(4),
            Text(
              userEmail,
              style: AppTextStyles.font14Black90w600(
                context,
              ).copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
    );
  }
}
