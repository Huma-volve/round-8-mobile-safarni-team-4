import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/colors/app_colors.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/theme/app_text_stytles.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/toures_booking_item_price_row_sec.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/toures_booking_item_tour_type_and_rate_sec.dart';

class TouresBookingListView extends StatelessWidget {
  const TouresBookingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(
              vertical: context.h(8),
              horizontal: context.w(8),
            ),
            margin: EdgeInsets.symmetric(
              vertical: context.h(6),
              horizontal: context.w(16),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.black[10]!,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    AssetsPaths.tourImage,
                    height: context.h(88),
                    width: context.w(88),
                    fit: BoxFit.cover,
                  ),
                ),
                context.gapW(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TouresBookingItemTourTypeAndRateSec(),
                      context.gapH(8),
                      Text(
                        'Eiffel Tower',
                        style: AppTextStyles.font13Gray80SemiBold(
                          context,
                        ).copyWith(fontSize: context.sp(16)),
                      ),
                      context.gapH(8),
                      const TouresBookingItemPriceRowSec(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
