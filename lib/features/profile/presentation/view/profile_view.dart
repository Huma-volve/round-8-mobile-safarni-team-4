import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/prefile_view_list_tile_list_vieew_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/profile_header.dart';

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
              const ProfileHeader(),
              context.gapH(24),
              const PrefileViewListTileListVieewSec(),
            ],
          ),
        ),
      ),
    );
  }
}
