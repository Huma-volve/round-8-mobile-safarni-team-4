import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/forget_password/forget_password_cubit.dart';

class ForgetPasswordFormFieldSection extends StatelessWidget {
  const ForgetPasswordFormFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgetPasswordCubit>().formKey,
      child: Column(
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
            controller: context.read<ForgetPasswordCubit>().emailController,
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
      ),
    );
  }
}
