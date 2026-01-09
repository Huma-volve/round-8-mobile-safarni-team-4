import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/font_weight_helper.dart';

class AppTextStyles {
  static TextStyle font24mainColorLightBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.mainColorLight,
        fontSize: context.sp(24),
        fontWeight: FontWeightHelper.bold,
      );
  static TextStyle font16mainColorLightSemiBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.mainColorLight,
        fontSize: context.sp(16),
        fontWeight: FontWeightHelper.semiBold,
      );
  static TextStyle font24grayColor90SemiBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.grayColor[90],
        fontSize: context.sp(24),
        fontWeight: FontWeightHelper.semiBold,
      );
  static TextStyle font32grayColor100SemiBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.grayColor[100],
        fontSize: context.sp(32),
        fontWeight: FontWeightHelper.semiBold,
      );
  static TextStyle font18grayColor100SemiBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.grayColor[100],
        fontSize: context.sp(18),
        fontWeight: FontWeightHelper.semiBold,
      );
  static TextStyle font14grayColor70Regular(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.grayColor[70],
        fontSize: context.sp(14),
        fontWeight: FontWeightHelper.regular,
      );

  static TextStyle font18Blackw600(BuildContext context) => context
      .textTheme
      .displayLarge!
      .copyWith(fontSize: context.sp(18), fontWeight: FontWeight.w600);

  static TextStyle font14Black90w600(BuildContext context) =>
      context.textTheme.displayMedium!.copyWith(
        fontSize: context.sp(14),
        color: AppColors.black[90],
        fontWeight: FontWeight.w600,
      );

  static TextStyle font13Gray80SemiBold(BuildContext context) =>
      GoogleFonts.poppins(
        color: AppColors.grayColor[90],
        fontSize: context.sp(13),
        fontWeight: FontWeightHelper.semiBold,
      );

  static TextStyle font14MainColorLightw600(BuildContext context) =>
      context.textTheme.displayMedium!.copyWith(
        fontSize: context.sp(14),
        color: AppColors.mainColorLight,
        fontWeight: FontWeight.w600,
      );
}
