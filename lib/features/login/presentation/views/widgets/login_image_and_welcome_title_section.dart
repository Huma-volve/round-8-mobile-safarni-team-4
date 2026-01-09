import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class LoginImageAndWelcomeTitleSection extends StatelessWidget {
  const LoginImageAndWelcomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        context.gapH(20),
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
        context.gapH(25),
        Image.asset(
          AssetsPaths.loginImage,
          height: context.h(60),
          width: context.w(57),
        ),

        context.gapH(36),
        Text(
          'Welcome Again',
          style: AppTextStyles.font18grayColor100SemiBold(context),
        ),
        context.gapH(8),
        Text(
          'welcome back! please fill your Data',
          style: AppTextStyles.font14grayColor70Regular(
            context,
          ).copyWith(color: AppColors.grayColor[60]),
        ),
      ],
    );
  }
}
