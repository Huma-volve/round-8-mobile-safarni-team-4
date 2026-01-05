import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';

class LoginImageSection extends StatelessWidget {
  const LoginImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsPaths.loginImage,
      height: context.h(60),
      width: context.w(57),
    );
  }
}
