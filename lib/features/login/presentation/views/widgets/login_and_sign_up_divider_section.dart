import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class LoginAndSignUpDividerSection extends StatelessWidget {
  const LoginAndSignUpDividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w(30)),
      child: Row(
        children: [
          Expanded(
            child: Divider(color: AppColors.grayColor[80], thickness: 1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.w(8)),
            child: Text(
              'Or',
              style: AppTextStyles.font13Gray80SemiBold(context),
            ),
          ),
          Expanded(
            child: Divider(color: AppColors.grayColor[80], thickness: 1),
          ),
        ],
      ),
    );
  }
}
