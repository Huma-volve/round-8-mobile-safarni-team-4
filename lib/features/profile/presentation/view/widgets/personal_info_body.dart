import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/personal_info_item.dart';

class PersonalInfoBody extends StatelessWidget {
  const PersonalInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Good practice to prevent overflow
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.w(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            context.gapH(32),
            const PersonalInfoItem(
              label: 'Name',
              value: 'kneeDue',
              icon: Icons.person_outline,
            ),
            const PersonalInfoItem(
              label: 'Email',
              value: 'kneeDue@untitledui.com',
              icon: Icons.email_outlined,
            ),
            const PersonalInfoItem(
              label: 'Country',
              value: '200-298 Clipper St San Francisco',
              icon: Icons.location_on_outlined,
            ),
            const PersonalInfoItem(
              label: 'Phone',
              value: '01283529928',
              icon: Icons.phone_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
