import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_error_dialog.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';

class VerifyCodeListenerSec extends StatelessWidget {
  const VerifyCodeListenerSec({super.key, required this.isForgetPassword});
  final bool isForgetPassword;

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyCodeCubit, VerifyCodeState>(
      listenWhen:
          (previous, current) =>
              current is VerifyCodeSuccess ||
              current is VerifyCodeLoading ||
              current is VerifyCodeFailure,
      listener: (context, state) {
        if (state is VerifyCodeLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
        if (state is VerifyCodeFailure) {
          log(state.errorMessage);
          Navigator.pop(context);
          customErrorDialog(context, state.errorMessage);
        }
        if (state is VerifyCodeSuccess) {
          Navigator.pop(context);
          Navigator.pushNamedAndRemoveUntil(
            context,
            isForgetPassword ? AppRoutes.setNewPasswordView : AppRoutes.home,
            (route) => false,
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
