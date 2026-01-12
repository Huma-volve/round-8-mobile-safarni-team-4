import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_text_form_field.dart';

class PersonalInfoItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const PersonalInfoItem({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.font14Black90w600(context)),
        context.gapH(4),
        CustomTextFormField(
          isReadOnly: true,
          hintText: label,
          initialValue: value,
          prefixIcon: icon,
        ),
        context.gapH(16),
      ],
    );
  }
}
