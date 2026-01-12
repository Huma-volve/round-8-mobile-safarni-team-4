import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/app_regex.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_label_text.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/password_validation.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';

class SignUpTextFormFieldsSec extends StatefulWidget {
  const SignUpTextFormFieldsSec({super.key});

  @override
  State<SignUpTextFormFieldsSec> createState() =>
      _SignUpTextFormFieldsSecState();
}

class _SignUpTextFormFieldsSecState extends State<SignUpTextFormFieldsSec> {
  bool isPassword = true;
  bool isConformationPassword = true;
  bool hasLowerCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasUpperCase = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<SignUpCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomLabelText(labelText: 'Full name'),
          context.gapH(4),
          CustomTextFormField(
            controller: context.read<SignUpCubit>().fullNameController,
            hintText: 'kneeDue',
            prefixIcon: Icons.person_outline,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
              return null;
            },
          ),
          context.gapH(16),
          const CustomLabelText(labelText: 'Email'),
          context.gapH(4),
          CustomTextFormField(
            controller: context.read<SignUpCubit>().emailController,
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
            controller: context.read<SignUpCubit>().passwordController,
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
              return null;
            },
          ),
          context.gapH(16),
          const CustomLabelText(labelText: 'Confirm Password'),
          context.gapH(4),
          CustomTextFormField(
            controller: context.read<SignUpCubit>().confirmPasswordController,
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
              } else if (value !=
                  context.read<SignUpCubit>().passwordController.text) {
                return 'Password does not match';
              }
              return null;
            },
          ),
          context.gapH(12),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
