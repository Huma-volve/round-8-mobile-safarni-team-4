import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
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
          style: context.textTheme.displayLarge?.copyWith(
            fontSize: context.sp(18),
          ),
        ),
        context.gapH(8),
        Text(
          'welcome back! please fill your Data',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
