import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/theme_extension.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.onPressed,
    this.height,
    this.width = double.infinity,
    this.radius,
    this.style,
    this.buttonColors,
    this.border,
  });

  final String buttonName;
  final void Function()? onPressed;
  final double? height;
  final double? width;
  final double? radius;
  final TextStyle? style;
  final Color? buttonColors;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? context.h(48),
        width: width ?? double.infinity,

        decoration: BoxDecoration(
          border: border,
          color: buttonColors ?? AppColors.mainColorLight,
          borderRadius: BorderRadius.circular(radius ?? 8),
        ),
        child: Center(
          child: Text(
            buttonName,
            style:
                style ??
                context.textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontSize: context.sp(16),
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
