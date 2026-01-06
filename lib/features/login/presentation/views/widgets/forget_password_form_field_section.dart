import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class ForgetPasswordFormFieldSection extends StatelessWidget {
  const ForgetPasswordFormFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Email',
            style: AppTextStyles.font14Black90w600(context),
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
            return null;
          },
        ),
      ],
    );
  }
}
