import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';

class OnboardingModel {
  final String image;
  final String text;

  OnboardingModel({required this.image, required this.text});

  static List<OnboardingModel> onBordingList = [
    OnboardingModel(
      image: AssetsPaths.onboardingImage1,
      text: 'Find Your Dream Adventure Here',
    ),
    OnboardingModel(
      image: AssetsPaths.onboardingImage2,
      text: 'Easily save your favorite  journeys',
    ),
    OnboardingModel(
      image: AssetsPaths.onboardingImage3,
      text: 'Plan Your Dream Trip With TripMate',
    ),
  ];
}
