import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/extensions/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/onboarding/model/onboarding_model.dart';

class OnboardingButton extends StatelessWidget {
  final PageController controller;
  final int currentIndex;

  const OnboardingButton({
    super.key,
    required this.controller,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentIndex == OnboardingModel.onBordingList.length - 1;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.w(16),
        vertical: (context.w(24)),
      ),
      child: CustomButton(
        onPressed: () {
          if (!isLastPage) {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else {
            context.pushNamed(AppRoutes.home);
          }
        },
        buttonName: isLastPage ? "Get Start" : "Next",
      ),
    );
  }
}
