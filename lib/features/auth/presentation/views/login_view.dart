import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/don_not_have_account_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/login_text_form_fields_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/login_image_and_welcome_title_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/login_forgot_password_and_button_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/login_divider_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/login_social_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              context.gapH(40),
              const LoginImageAndWelcomeTitleSection(),
              context.gapH(8),
              const LoginTextFormFieldsSec(),
              context.gapH(8),
              const LoginForgotPasswordAndButtonSection(),
              context.gapH(24),
              const LoginDividerSection(),
              context.gapH(24),
              const LoginSocialSection(),
              context.gapH(32),
              const DonNotHaveAccountSec(),
            ],
          ),
        ),
      ),
    );
  }
}
