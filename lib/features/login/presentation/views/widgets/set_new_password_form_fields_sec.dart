import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/reset_password/reset_password_cubit.dart';

class SetNewPasswordFormFieldsSec extends StatefulWidget {
  const SetNewPasswordFormFieldsSec({super.key});

  @override
  State<SetNewPasswordFormFieldsSec> createState() =>
      _SetNewPasswordFormFieldsSecState();
}

class _SetNewPasswordFormFieldsSecState
    extends State<SetNewPasswordFormFieldsSec> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ResetPasswordCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Password', style: AppTextStyles.font14Black90w600(context)),
          context.gapH(4),
          CustomTextFormField(
            controller: cubit.passwordController,
            hintText: '***********',
            isObscureText: isPassword,
            suffixIcon: isPassword ? Icons.visibility : Icons.visibility_off,
            suffixIconTap: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            prefixIcon: Icons.lock_outline,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
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
            controller: cubit.confirmPasswordController,
            hintText: '***********',
            isObscureText: isPassword,
            suffixIcon: isPassword ? Icons.visibility : Icons.visibility_off,
            suffixIconTap: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            prefixIcon: Icons.lock_outline,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              if (value != cubit.passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
