import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class VerifyCodeViewOtpFieldsSec extends StatefulWidget {
  const VerifyCodeViewOtpFieldsSec({super.key});

  @override
  State<VerifyCodeViewOtpFieldsSec> createState() =>
      _VerifyCodeViewOtpFieldsSecState();
}

class _VerifyCodeViewOtpFieldsSecState
    extends State<VerifyCodeViewOtpFieldsSec> {
  @override
  Widget build(BuildContext context) {
    return Pinput(
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
