import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class LoginTextFormFieldsSec extends StatelessWidget {
  const LoginTextFormFieldsSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: context.textTheme.displayMedium?.copyWith(
            fontSize: context.sp(14),
            color: AppColors.black[80],
            fontWeight: FontWeight.w500,
          ),
        ),
        context.gapH(4),
        CustomTextFormField(
          hintText: 'Enter your email',
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
        Text(
          'Password',
          style: context.textTheme.displayMedium?.copyWith(
            fontSize: context.sp(14),
            color: AppColors.black[80],
            fontWeight: FontWeight.w500,
          ),
        ),
        context.gapH(4),  
        CustomTextFormField(
          hintText: 'Enter your password',
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
        ),
      ],
    );
  }
}
