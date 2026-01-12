import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/presentation/manager/verify_code/verify_code_cubit.dart';

class VerifyCodeViewOtpFieldsSec extends StatelessWidget {
  const VerifyCodeViewOtpFieldsSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: context.read<VerifyCodeCubit>().otpController,
      length: 4,
      focusedPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: context.textTheme.titleLarge!,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColorLight, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      separatorBuilder: (index) => context.gapW(32),
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: context.textTheme.titleLarge!,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColorLight),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter the code';
        } else if (value.length < 4) {
          return 'Code must be 4 digits';
        }
        return null;
      },
      onCompleted: (value) {
        log(' >>>>>>>>>>>>>>>>>>>> OTP Entered: $value');
      },
    );
  }
}
