import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';

class SignUpButtonSec extends StatelessWidget {
  const SignUpButtonSec({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      buttonName: 'Sign Up',
      onPressed: () {
        if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
          context.read<SignUpCubit>().signUp();
        }
      },
    );
  }
}
