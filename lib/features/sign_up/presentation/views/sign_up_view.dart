import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/login_and_sign_up_divider_section.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/already_have_an_account_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/sign_up_button_section.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/sign_up_listener_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/sign_up_social_section.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/sign_up_text_form_fields_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/sign_up_welcome_title_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
              const SignUpWelcomeTitleSection(),
              context.gapH(8),
              const SignUpTextFormFieldsSec(),
              context.gapH(24),
              const SignUpButtonSec(),
              context.gapH(24),
              const LoginAndSignUpDividerSection(),
              context.gapH(24),
              const SignUpSocialSection(),
              context.gapH(32),
              const HaveAnAccountSec(),
              const SignUpListenerSec(),
              context.gapH(32),
            ],
          ),
        ),
      ),
    );
  }
}
