import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class ProfileViewListTileItem extends StatelessWidget {
  const ProfileViewListTileItem({
    super.key,
    required this.title,
    required this.iconPath,
    required this.onTap,
    this.isLogout = false,
  });
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: context.w(12.5),
              height: context.h(16.25),
              color: isLogout ? Colors.red : AppColors.black[80],
            ),
            context.gapW(8),
            Text(
              title,
              style: AppTextStyles.font18Blackw600(context).copyWith(
                fontSize: context.sp(14),
                fontWeight: FontWeight.w400,
                color: isLogout ? Colors.red : AppColors.black[90],
              ),
            ),
            Spacer(),
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
