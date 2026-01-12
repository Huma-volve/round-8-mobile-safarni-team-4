import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/onboarding/model/onboarding_model.dart';

import '../../../../../core/colors/app_colors.dart';
import '../../../../../core/routing/app_routes.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({
    super.key,
    required this.controller,
    required this.currentIndex,
  });
  final PageController controller;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentIndex == OnboardingModel.onBordingList.length - 1;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w(16)),
      child: Row(
        children: [
          Text(
            "Safarni",
            style: AppTextStyles.font24mainColorLightBold(context),
          ),
          const Spacer(),
          if (!isLastPage)
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.pushNamed(AppRoutes.welcomeView);
                  },
                  child: Text(
                    "Skip",
                    style: AppTextStyles.font16mainColorLightSemiBold(context),
                  ),
                ),
                context.gapW(8),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.mainColorLight,
                  size: context.w(12),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
