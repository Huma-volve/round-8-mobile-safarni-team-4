import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(
          'At least 1 lowercase letter',
          hasLowerCase,
          context,
        ),
        context.gapH(2),
        buildValidationRow(
          'At least 1 uppercase letter',
          hasUpperCase,
          context,
        ),
        context.gapH(2),
        buildValidationRow(
          'At least 1 special character',
          hasSpecialCharacters,
          context,
        ),
        context.gapH(2),
        buildValidationRow('At least 1 number', hasNumber, context),
        context.gapH(2),
        buildValidationRow('At least 8 characters long', hasMinLength, context),
      ],
    );
  }

  Widget buildValidationRow(
    String text,
    bool hasValidated,
    BuildContext context,
  ) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: AppColors.gray),
        context.gapH(6),
        Text(
          text,
          style: context.textTheme.bodyMedium?.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.gray : AppColors.mainColorLight,
          ),
        ),
      ],
    );
  }
}
