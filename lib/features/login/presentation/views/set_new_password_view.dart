import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/manager/reset_password/reset_password_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_back_to_login_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_form_fields_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_listener_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_view_header_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';

class SetNewPasswordView extends StatelessWidget {
  const SetNewPasswordView({super.key, required this.verifyCodeRequestEntity});

  final VerifyCodeRequestEntity verifyCodeRequestEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              context.gapH(64),
              const SetNewPasswordViewHeaderSec(),
              context.gapH(36),
              const SetNewPasswordFormFieldsSec(),
              context.gapH(16),
              CustomButton(
                buttonName: 'Reset Password',
                onPressed: () {
                  final cubit = context.read<ResetPasswordCubit>();
                  if (cubit.formKey.currentState!.validate()) {
                    cubit.resetPassword(
                      userId: verifyCodeRequestEntity.userId,
                      otp: verifyCodeRequestEntity.otp,
                    );
                  }
                },
              ),
              context.gapH(16),
              const SetNewPasswordBackToLoginSec(),
              const SetNewPasswordListenerSec(),
            ],
          ),
        ),
      ),
    );
  }
}

