import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

Future<dynamic> logoutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: Colors.white,
        title: Text(
          'Do You Want To Register The Exit Already ?',
          textAlign: TextAlign.center,
          style: AppTextStyles.font18Blackw600(
            context,
          ).copyWith(fontWeight: FontWeight.w500, color: AppColors.black[80]),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'No',
                  style: AppTextStyles.font18Blackw600(context).copyWith(
                    color: AppColors.black[80],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.loginView,
                    (route) => false,
                  );
                },
                child: Text(
                  'Yes',
                  style: AppTextStyles.font18Blackw600(
                    context,
                  ).copyWith(color: Colors.red, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
