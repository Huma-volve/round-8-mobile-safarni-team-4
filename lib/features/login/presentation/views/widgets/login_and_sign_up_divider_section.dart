import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class LoginAndSignUpDividerSection extends StatelessWidget {
  const LoginAndSignUpDividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w(30)),
      child: Row(
        children: [
          Expanded(child: Divider(color: Colors.grey, thickness: 2)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.w(8)),
            child: Text(
              'Or',
              style: context.textTheme.displayMedium?.copyWith(
                fontSize: context.sp(13),
                color: AppColors.black[80],
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(child: Divider(color: Colors.grey, thickness: 2)),
        ],
      ),
    );
  }
}
