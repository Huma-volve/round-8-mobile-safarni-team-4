import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? initialValue;
  final bool? isObscureText;
  final bool isReadOnly;
  final IconData? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function()? suffixIconTap;
  final IconData? prefixIcon;

  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.initialValue,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.suffixIconTap,
    this.prefixIcon,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isReadOnly,
      controller: controller,
      initialValue: initialValue,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(
              horizontal: context.w(16),
              vertical: context.h(12),
            ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
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
              borderSide: const BorderSide(color: Colors.grey),
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
            context.textTheme.displayMedium?.copyWith(color: Colors.grey),
        hintText: hintText,
        suffixIcon:
            suffixIcon != null
                ? GestureDetector(onTap: suffixIconTap, child: Icon(suffixIcon))
                : null,
        prefixIcon:
            prefixIcon != null ? Icon(prefixIcon, color: Colors.grey) : null,
        fillColor: backgroundColor ?? AppColors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      validator: validator ?? (value) => null,
    );
  }
}
