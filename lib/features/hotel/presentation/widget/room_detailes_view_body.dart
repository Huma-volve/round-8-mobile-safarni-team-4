import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/custom_detailes_image.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/widget/section_detailes_view_body.dart';

class RoomDetailesViewBody extends StatelessWidget {
  const RoomDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   child: Container(
        //     // height: 158,
        //     padding: const EdgeInsets.all(16),
        //     decoration: BoxDecoration(
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.black.withOpacity(0.1),
        //           blurRadius: 10,
        //           offset: const Offset(0, 5),
        //         ),
        //       ],
        //       color: Colors.white,
        //       borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(20),
        //         topRight: Radius.circular(20),
        //       ),
        //     ),
        //     child: Row(
        //       children: [
        //         Column(
        //           children: [
        //             Text(
        //               "Total price",
        //               style: TextStyle(
        //                 color: Colors.grey[900],
        //                 fontSize: 16,
        //                 fontWeight: FontWeight.w400,
        //               ),
        //             ),
        //             SizedBox(height: 8),
        //             RichText(
        //               text: TextSpan(
        //                 children: [
        //                   TextSpan(
        //                     text: "\$200.00",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Color(0xff1E429F),
        //                     ),
        //                   ),
        //                   TextSpan(
        //                     text: "/night",
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       fontWeight: FontWeight.bold,
        //                       color: Colors.grey[900],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),

        //             const SizedBox(height: 20),
        //           ],
        //         ),
        //         Expanded(child: SizedBox()),

        //       ],
        //     ),
        //   ),
        // ),
        SingleChildScrollView(
          child: Column(
            children: [
              CustomDetailesImage(),
              const SectionDetailesViewBody(),
              //  const SizedBox(height: 150),
            ],
          ),
        ),
      ],
    );
  }
}
