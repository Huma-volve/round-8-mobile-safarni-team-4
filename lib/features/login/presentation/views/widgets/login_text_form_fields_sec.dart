import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_label_text.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class LoginTextFormFieldsSec extends StatelessWidget {
  const LoginTextFormFieldsSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomLabelText(labelText: 'Email'),
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
        context.gapH(16),
        const CustomLabelText(labelText: 'Password'),
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
