import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';

void customErrorDialog(BuildContext context, String error) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          backgroundColor: Colors.white,
          icon: Icon(Icons.error, color: Colors.red, size: context.w(40)),
          content: Text(
            error,
            style: AppTextStyles.font16mainColorLightSemiBold(context),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Got it',
                textAlign: TextAlign.center,
                style: AppTextStyles.font14MainColorLightw600(context),
              ),
            ),
          ],
        ),
  );
}
