import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_theme.dart';

class CustomTextHeader extends StatelessWidget {
  const CustomTextHeader({
    super.key,
    required this.title,
    required this.textButton,
    required this.onPressed,
  });
  final String title;
  final String textButton;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppThemes.light.textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        const Expanded(child: SizedBox()),
        TextButton(onPressed: onPressed, child: Text(textButton)),
      ],
    );
  }
}
