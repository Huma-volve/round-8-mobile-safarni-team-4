import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/font_weight_helper.dart';

class CustomFaceGoogleContainer extends StatelessWidget {
  const CustomFaceGoogleContainer({
    super.key,
    required this.isGoogle,
    this.onTap,
    required this.title,
  });

  final bool isGoogle;
  final void Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * .055,

        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              isGoogle ? 'assets/images/google.svg' : 'assets/images/face.svg',
              width: context.w(20),
              height: context.h(20),
              fit: BoxFit.fill,
            ),
            context.gapW(10),
            Text(
              title,
              style: AppTextStyles.font14grayColor70Regular(
                context,
              ).copyWith(fontWeight: FontWeightHelper.semiBold),
            ),
          ],
        ),
      ),
    );
  }
}
