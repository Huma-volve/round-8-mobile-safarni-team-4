import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';

class ProfileListTileModel {
  final String subtitle;
  final String iconPath;

  ProfileListTileModel({required this.subtitle, required this.iconPath});

 static List<ProfileListTileModel> getProfileListTiles = [
      ProfileListTileModel(
        subtitle: 'Personal Info',
        iconPath: AssetsPaths.personalIcon,
      ),
      ProfileListTileModel(
        subtitle: 'Account & Security',
        iconPath: AssetsPaths.lockIcon,
      ),
      ProfileListTileModel(
        subtitle: 'My Booking',
        iconPath: AssetsPaths.myBookingIcon,
      ),
      ProfileListTileModel(
        subtitle: 'App Language',
        iconPath: AssetsPaths.languageIcon,
      ),
      ProfileListTileModel(
        subtitle: 'Logout',
        iconPath: AssetsPaths.logoutIcon,
      ),
    ];
  }

