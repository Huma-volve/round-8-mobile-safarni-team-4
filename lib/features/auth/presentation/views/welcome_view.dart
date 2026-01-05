import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/welcome_image_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/welcome_title_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/welcome_description_section.dart';
import 'package:round_8_mobile_safarni_team4/features/auth/presentation/views/widgets/welcome_buttons_section.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            children: [
              context.gapH(57),
              const WelcomeImageSection(),
              context.gapH(48),
              const WelcomeTitleSection(),
              const WelcomeDescriptionSection(),
              context.gapH(24),
              const WelcomeButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
