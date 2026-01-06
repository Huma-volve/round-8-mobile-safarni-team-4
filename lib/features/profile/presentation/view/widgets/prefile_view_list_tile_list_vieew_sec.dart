import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/profile_list_tile_model.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/profile_view_list_tile_item.dart';

class PrefileViewListTileListVieewSec extends StatelessWidget {
  const PrefileViewListTileListVieewSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => context.gapH(16),
        itemBuilder: (context, index) {
          return ProfileViewListTileItem(
            isLogout: index == 4,
            profileListTileModel:
                ProfileListTileModel.getProfileListTiles[index],
          );
        },
        itemCount: ProfileListTileModel.getProfileListTiles.length,
      ),
    );
  }
}
