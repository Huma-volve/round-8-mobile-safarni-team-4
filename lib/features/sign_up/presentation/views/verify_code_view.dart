import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show ReadContext;
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/font_weight_helper.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/verify_code_header_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/verify_code_listener_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/views/widgets/verify_code_view_otp_fields_sec.dart';

class VerifyCodeView extends StatelessWidget {
  const VerifyCodeView({super.key, required this.verifyCodeRequestEntity});
  final VerifyCodeRequestEntity verifyCodeRequestEntity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            children: [
              context.gapH(20),
              VerifyCodeViewHeaderSec(email: verifyCodeRequestEntity.email),
              context.gapH(24),
              const VerifyCodeViewOtpFieldsSec(),
              context.gapH(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OTP not receive ? ',
                    style: AppTextStyles.font14grayColor70Regular(context),
                  ),
                  Text(
                    ' Send Again',
                    style: AppTextStyles.font14grayColor70Regular(
                      context,
                    ).copyWith(
                      color: AppColors.mainColorLight,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                ],
              ),
              context.gapH(16),
              CustomButton(
                onPressed: () {
                  context.read<VerifyCodeCubit>().verifyCode(
                    userId: verifyCodeRequestEntity.userId,
                    email: verifyCodeRequestEntity.email,
                  );
                },
                buttonName: 'Verify',
              ),
              const VerifyCodeListenerSec(),
            ],
          ),
        ),
      ),
    );
  }
}
