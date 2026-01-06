import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class SetNewPasswordFormFieldsSec extends StatelessWidget {
  const SetNewPasswordFormFieldsSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: AppTextStyles.font14Black90w600(context)),
        context.gapH(4),
        CustomTextFormField(
          hintText: '***********',
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
        context.gapH(16),
        Text(
          'Confirm Password',
          style: AppTextStyles.font14Black90w600(context),
        ),
        context.gapH(4),
        CustomTextFormField(
          hintText: '***********',
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
            return null;
          },
        ),
      ],
    );
  }
}
