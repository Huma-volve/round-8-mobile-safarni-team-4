import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class VerifyCodeViewHeaderSec extends StatelessWidget {
  const VerifyCodeViewHeaderSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: context.sp(17),
              color: AppColors.black[100],
            ),
          ),
        ),
        context.gapH(32),
        SvgPicture.asset(
          AssetsPaths.mailIcon,
          width: context.w(20),
          height: context.h(15),
        ),
        context.gapH(24),
        Text('Verify Code', style: AppTextStyles.font18Blackw600(context)),
        context.gapH(16),
        Text(
          'Please enter the code we just sent to email',
          style: AppTextStyles.font14Black90w600(
            context,
          ).copyWith(fontWeight: FontWeight.w400),
        ),
        Text(
          'kneedue@untitledui.com',
          style: AppTextStyles.font14Black90w600(context),
        ),
        context.gapH(30),
        Text('00:30', style: context.textTheme.titleLarge),
      ],
    );
  }
}
