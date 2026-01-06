import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/profile_list_tile_model.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/profile_view_list_tile_item.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.w(16)),
          child: Column(
            children: [
              context.gapH(62),
              Stack(
                children: [
                  Container(
                    height: context.h(100),
                    width: context.h(100),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xff3F52B4), Color(0xffB22459)],
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: context.w(50),
                      backgroundImage: AssetImage(AssetsPaths.profileImage),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(AssetsPaths.cameraIcon),
                    ),
                  ),
                ],
              ),
              context.gapH(8),
              Text(
                'Knee Due',
                style: AppTextStyles.font14Black90w600(
                  context,
                ).copyWith(fontSize: context.sp(16)),
              ),
              context.gapH(4),
              Text(
                'kneedue@gmail.com',
                style: AppTextStyles.font14Black90w600(
                  context,
                ).copyWith(fontWeight: FontWeight.w500),
              ),
              context.gapH(24),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => context.gapH(16),
                  itemBuilder: (context, index) {
                    return ProfileViewListTileItem(
                      title:
                          ProfileListTileModel
                              .getProfileListTiles[index]
                              .subtitle,
                      isLogout: index == 4,
                      iconPath:
                          ProfileListTileModel
                              .getProfileListTiles[index]
                              .iconPath,
                      onTap: () {},
                    );
                  },
                  itemCount: ProfileListTileModel.getProfileListTiles.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
