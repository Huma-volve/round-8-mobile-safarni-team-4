import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              context.gapH(35),
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
                style: context.textTheme.displayMedium?.copyWith(
                  fontSize: context.sp(14),
                  color: AppColors.black[90],
                ),
              ),
              context.gapH(36),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: context.textTheme.displayMedium?.copyWith(
                    fontSize: context.sp(14),
                    color: AppColors.black[90],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              context.gapH(4),
              CustomTextFormField(
                hintText: 'kneeDue@untitledui.com',
                prefixIcon: Icons.email_outlined,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                },
              ),
              context.gapH(16),
              CustomButton(buttonName: 'Reset Password', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
