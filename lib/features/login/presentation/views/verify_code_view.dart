import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/verify_code_header_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/login/presentation/views/widgets/verify_code_view_otp_fields_sec.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            children: [
              context.gapH(20),
              const VerifyCodeViewHeaderSec(),
              context.gapH(24),
              const VerifyCodeViewOtpFieldsSec(),
              context.gapH(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OTP not receive ? ',
                    style: AppTextStyles.font14Black90w600(
                      context,
                    ).copyWith(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    ' Send Again',
                    style: AppTextStyles.font14MainColorLightw600(context),
                  ),
                ],
              ),
              context.gapH(16),
              CustomButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.setNewPasswordView);
                },
                buttonName: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
