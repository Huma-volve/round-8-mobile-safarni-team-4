import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/onboarding/view/widgets/onboarding_header.dart';

import 'widgets/onboarding_carousel.dart';
import 'widgets/onboarding_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            context.gapH(25),
            OnboardingHeader(
              controller: _pageController,
              currentIndex: _currentIndex,
            ),
            Expanded(
              child: OnboardingCarousel(
                controller: _pageController,
                currentIndex: _currentIndex,
                onPageChanged: (index) => setState(() => _currentIndex = index),
              ),
            ),
            OnboardingButton(
              controller: _pageController,
              currentIndex: _currentIndex,
            ),
          ],
        ),
      ),
    );
  }
}
