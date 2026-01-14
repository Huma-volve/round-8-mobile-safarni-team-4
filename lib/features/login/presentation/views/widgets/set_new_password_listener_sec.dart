import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_error_dialog.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/reset_password/reset_password_cubit.dart';

class SetNewPasswordListenerSec extends StatelessWidget {
  const SetNewPasswordListenerSec({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen:
          (previous, current) =>
              current is ResetPasswordLoading ||
              current is ResetPasswordSuccess ||
              current is ResetPasswordFailure,
      listener: (context, state) {
        if (state is ResetPasswordLoading) {
          showDialog(
            context: context,
            builder: (context) {
              return const Center(child: CircularProgressIndicator());
            },
          );
        }
        if (state is ResetPasswordFailure) {
          Navigator.pop(context);
          customErrorDialog(context, state.errorMessage);
        }
        if (state is ResetPasswordSuccess) {
          Navigator.pop(context);
          context.pushNamed(AppRoutes.successResetPasswordView);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}

