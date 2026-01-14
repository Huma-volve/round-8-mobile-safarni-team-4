import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_error_dialog.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';

class VerifyCodeListenerSec extends StatelessWidget {
  const VerifyCodeListenerSec({
    super.key,
    required this.verifyCodeRequestEntity,
  });
  final VerifyCodeRequestEntity verifyCodeRequestEntity;

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
          if (verifyCodeRequestEntity.isForgetPassword) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.setNewPasswordView,
              (route) => false,
              arguments: VerifyCodeRequestEntity(
                userId: verifyCodeRequestEntity.userId,
                otp: context.read<VerifyCodeCubit>().otpController.text,
                email: verifyCodeRequestEntity.email,
                isForgetPassword: true,
              ),
            );
          } else {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.home,
              (route) => false,
            );
          }
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
