import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_label_text.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/login_cubit/login_cubit.dart';

class LoginTextFormFieldsSec extends StatefulWidget {
  const LoginTextFormFieldsSec({super.key});

  @override
  State<LoginTextFormFieldsSec> createState() => _LoginTextFormFieldsSecState();
}

class _LoginTextFormFieldsSecState extends State<LoginTextFormFieldsSec> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomLabelText(labelText: 'Email'),
          context.gapH(4),
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
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
            controller: context.read<LoginCubit>().passwordController,
            hintText: '***********',
            isObscureText: isPassword,
            prefixIcon: Icons.lock_outline,
            suffixIcon: isPassword ? Icons.visibility : Icons.visibility_off,
            suffixIconTap: () {
              setState(() {
                isPassword = !isPassword;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
