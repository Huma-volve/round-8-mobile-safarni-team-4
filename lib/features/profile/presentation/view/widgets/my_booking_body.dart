import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/booking_type_cubit/booking_type_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/my_booking_cubit/my_booking_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/my_booking_category_list_view.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/my_booking_content.dart';

class MyBookingBody extends StatelessWidget {
  const MyBookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingTypeCubit, BookingTypeState>(
      listener: (context, state) {
        final bookingType = context
            .read<BookingTypeCubit>()
            .getBookingTypeFromIndex(state.selectedIndex);
        context.read<MyBookingCubit>().loadBookings(bookingType);
      },
      builder: (context, state) {
        return Column(
          children: [
            context.gapH(24),
            MyBookingCategoryListView(
              callBack: (int index) {
                context.read<BookingTypeCubit>().selectBookingType(index);
              },
            ),
            context.gapH(10),
            const Expanded(child: MyBookingContent()),
          ],
        );
      },
    );
  }
}
