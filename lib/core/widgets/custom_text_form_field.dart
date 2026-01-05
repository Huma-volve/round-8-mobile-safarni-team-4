import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/theme_extension.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final IconData? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function()? suffixIconTap;

  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.suffixIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(
              horizontal: context.w(16),
              vertical: context.h(12),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.mainColorLight),
              borderRadius: BorderRadius.circular(4.0),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray),
              borderRadius: BorderRadius.circular(4.0),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(4.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(4.0),
        ),
        hintStyle:
            hintStyle ??
            context.textTheme.displayMedium?.copyWith(
              color: AppColors.black[60],
            ),
        hintText: hintText,
        suffixIcon: GestureDetector(
          onTap: suffixIconTap,
          child: Icon(suffixIcon),
        ),
        fillColor: backgroundColor ?? AppColors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: context.textTheme.bodyMedium,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
