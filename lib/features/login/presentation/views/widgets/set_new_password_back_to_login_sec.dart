import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

class SetNewPasswordBackToLoginSec extends StatelessWidget {
  const SetNewPasswordBackToLoginSec({super.key});

  @override
  Widget build(BuildContext context) {
    return               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.loginView,
                        (route) => false,
                      );
                    },
                    icon: Icon(Icons.arrow_back, size: context.sp(16)),
                  ),
                  Text(
                    'Back to Login',
                    style: AppTextStyles.font14Black90w600(
                      context,
                    ).copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              );
  }
}