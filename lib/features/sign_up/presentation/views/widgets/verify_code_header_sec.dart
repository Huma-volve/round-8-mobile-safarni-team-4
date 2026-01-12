import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class VerifyCodeViewHeaderSec extends StatelessWidget {
  const VerifyCodeViewHeaderSec({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.gapH(32),
        SvgPicture.asset(
          AssetsPaths.mailIcon,
          width: context.w(20),
          height: context.h(15),
        ),
        context.gapH(24),
        Text(
          'Verify Code',
          style: AppTextStyles.font18grayColor100SemiBold(context),
        ),
        context.gapH(16),
        Text(
          'Please enter the code we just sent to email',
          style: AppTextStyles.font14grayColor70Regular(
            context,
          ).copyWith(color: AppColors.grayColor[60]),
        ),
        Text(
          email,
          style: AppTextStyles.font14grayColor70Regular(
            context,
          ).copyWith(color: AppColors.grayColor[100]),
        ),
      ],
    );
  }
}
