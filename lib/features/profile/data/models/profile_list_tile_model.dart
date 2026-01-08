import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';

class ProfileListTileModel {
  final String title;
  final String iconPath;
  final String? routeName;

  ProfileListTileModel({
    required this.title,
    required this.iconPath,
    this.routeName,
  });

  static List<ProfileListTileModel> getProfileListTiles = [
    ProfileListTileModel(
      title: 'Personal Info',
      iconPath: AssetsPaths.personalIcon,
      routeName: AppRoutes.personalInfoView,
    ),
    ProfileListTileModel(
      title: 'Account & Security',
      iconPath: AssetsPaths.lockIcon,
    ),
    ProfileListTileModel(
      title: 'My Booking',
      iconPath: AssetsPaths.myBookingIcon,
      routeName: AppRoutes.myBookingView,
    ),
    ProfileListTileModel(
      title: 'App Language',
      iconPath: AssetsPaths.languageIcon,
    ),
    ProfileListTileModel(title: 'Logout', iconPath: AssetsPaths.logoutIcon),
  ];
}
