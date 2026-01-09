import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class ForgetPasswordViewHeaderSec extends StatelessWidget {
  const ForgetPasswordViewHeaderSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AssetsPaths.keyIcon,
          width: context.w(20),
          height: context.h(20),
        ),
        context.gapH(24),
        Text(
          'Forgot Password?',
          style: AppTextStyles.font18grayColor100SemiBold(context),
        ),
        context.gapH(8),
        Text(
          'please enter your email to reset that password',
          style: AppTextStyles.font14grayColor70Regular(
            context,
          ).copyWith(color: AppColors.grayColor[60]),
        ),
      ],
    );
  }
}
