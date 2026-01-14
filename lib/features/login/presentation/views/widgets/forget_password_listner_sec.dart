import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_error_dialog.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/forget_password/forget_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';

class ForgetPasswordListnerSec extends StatelessWidget {
  const ForgetPasswordListnerSec({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
      listenWhen:
          (previous, current) =>
              current is ForgetPasswordSuccess ||
              current is ForgetPasswordLoading ||
              current is ForgetPasswordFailure,
      listener: (context, state) {
        if (state is ForgetPasswordLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
        if (state is ForgetPasswordFailure) {
          Navigator.pop(context);
          customErrorDialog(context, state.errorMessage);
        }
        if (state is ForgetPasswordSuccess) {
          Navigator.pop(context);
          context.pushNamed(
            AppRoutes.verifyCodeView,
            arguments: VerifyCodeRequestEntity(
              userId: state.forgetPasswordEntity.userId,
              otp: '',
              isForgetPassword: true,
              email: context.read<ForgetPasswordCubit>().emailController.text,
            ),
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
