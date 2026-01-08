import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/theme_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/profile_list_tile_model.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/logout_dialog.dart';

class ProfileViewListTileItem extends StatelessWidget {
  const ProfileViewListTileItem({
    super.key,
    required this.profileListTileModel,
    this.isLogout = false,
  });
  final ProfileListTileModel profileListTileModel;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (profileListTileModel.routeName != null) {
          context.pushNamed(profileListTileModel.routeName!);
        } else if (isLogout) {
          logoutDialog(context);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.w(16),
          vertical: context.h(18),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.black[10]!,
              blurRadius: 8,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              profileListTileModel.iconPath,
              width: context.w(12.5),
              height: context.h(16.25),
              color: isLogout ? Colors.red : AppColors.black[80],
            ),
            context.gapW(8),
            Text(
              profileListTileModel.title,
              style: AppTextStyles.font18Blackw600(context).copyWith(
                fontSize: context.sp(14),
                fontWeight: FontWeight.w400,
                color: isLogout ? Colors.red : AppColors.black[90],
              ),
            ),
            const Spacer(),
            if (!isLogout)
              Icon(
                Icons.arrow_forward_ios,
                size: context.sp(12),
                color: AppColors.black[90],
              ),
          ],
        ),
      ),
    );
  }

 
}
