import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/face_google_container.dart';

class SignUpSocialSection extends StatelessWidget {
  const SignUpSocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFaceGoogleContainer(isGoogle: true, title: 'Sign Up with Google'),
        context.gapH(16),
        CustomFaceGoogleContainer(
          isGoogle: false,
          title: 'Sign Up with Facebook',
        ),
      ],
    );
  }
}
