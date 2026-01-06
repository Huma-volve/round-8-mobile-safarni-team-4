import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_detailes_image.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/section_detailes_view_body.dart';

class RoomDetailesViewBody extends StatelessWidget {
  const RoomDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomDetailesImage(), const SectionDetailesViewBody()]);
  }
}
