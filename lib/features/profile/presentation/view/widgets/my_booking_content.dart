import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/booking_type_cubit/booking_type_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/my_booking_cubit/my_booking_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/build_booking_list_by_type.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/view/widgets/build_error_widget.dart';

class MyBookingContent extends StatelessWidget {
  const MyBookingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyBookingCubit, MyBookingState>(
      builder: (context, bookingState) {
        return BlocBuilder<BookingTypeCubit, BookingTypeState>(
          builder: (context, typeState) {
            final bookings =
                bookingState is MyBookingSuccess
                    ? bookingState.bookings
                    : <BookingEntity>[];

            if (bookingState is MyBookingLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (bookingState is MyBookingFailure) {
              return buildErrorWidget(context, bookingState);
            }

            return buildBookingListByType(typeState.selectedIndex, bookings);
          },
        );
      },
    );
  }
}
