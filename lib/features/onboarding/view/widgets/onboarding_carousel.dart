// import 'package:flutter/material.dart';
// import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
// import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
// import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
// import 'package:round_8_mobile_safarni_team4/features/onboarding/model/onboarding_model.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnboardingCarousel extends StatelessWidget {
//   final PageController controller;
//   final int currentIndex;
//   final Function(int) onPageChanged;
//
//   const OnboardingCarousel({
//     super.key,
//     required this.controller,
//     required this.currentIndex,
//     required this.onPageChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//       controller: controller,
//
//       itemCount: OnboardingModel.onBordingList.length,
//       onPageChanged: onPageChanged,
//       itemBuilder: (context, index) {
//         bool isActive = index == currentIndex;
//         final item = OnboardingModel.onBordingList[index];
//
//         return Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               curve: Curves.easeInOut,
//               margin: EdgeInsets.symmetric(horizontal: context.w(10)),
//               width: double.infinity,
//               height: isActive ? context.h(384) : context.h(308),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(32),
//                 child: Image.asset(item.image, fit: BoxFit.cover),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: context.h(20)),
//               child: SmoothPageIndicator(
//                 controller: controller,
//                 count: OnboardingModel.onBordingList.length,
//                 effect: ExpandingDotsEffect(
//                   dotHeight: context.h(8),
//                   dotWidth: context.w(8),
//                   activeDotColor: AppColors.mainColorLight,
//                   dotColor: Colors.grey.shade300,
//                   expansionFactor: 4,
//                 ),
//               ),
//             ),
//             context.gapH(12),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: context.w(32)),
//               child: Text(
//                 item.text,
//                 textAlign: TextAlign.center,
//                 style: context.textTheme.titleMedium?.copyWith(
//                   fontSize: context.sp(24),
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
