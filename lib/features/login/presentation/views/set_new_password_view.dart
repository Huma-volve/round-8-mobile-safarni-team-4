import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_back_to_login_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_form_fields_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/set_new_password_view_header_sec.dart';

class SetNewPasswordView extends StatelessWidget {
  const SetNewPasswordView({super.key});

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
              SetNewPasswordViewHeaderSec(),
              context.gapH(36),
              SetNewPasswordFormFieldsSec(),
              context.gapH(16),
              CustomButton(
                buttonName: 'Reset Password',
                onPressed: () {
                  context.pushNamed(AppRoutes.successResetPasswordView);
                },
              ),
              context.gapH(16),
              SetNewPasswordBackToLoginSec(),
            ],
          ),
        ),
      ),
    );
  }
}
