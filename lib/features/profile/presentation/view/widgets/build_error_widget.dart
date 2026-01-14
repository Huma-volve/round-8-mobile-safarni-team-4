import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import 'package:round_8_mobile_safarni_team4/core/widgets/custom_button.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/booking_type_cubit/booking_type_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/presentation/manager/my_booking_cubit/my_booking_cubit.dart';

Widget buildErrorWidget(BuildContext context, MyBookingFailure failure) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w(24)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.red),
          context.gapH(16),
          Text(
            'Failed to load bookings',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          context.gapH(8),
          Text(
            failure.errorMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          context.gapH(24),
          CustomButton(
            buttonName: 'Try Again',
            width: context.w(200),
            onPressed: () {
              final bookingType = context
                  .read<BookingTypeCubit>()
                  .getBookingTypeFromIndex(
                    context.read<BookingTypeCubit>().state.selectedIndex,
                  );
              context.read<MyBookingCubit>().loadBookings(bookingType);
            },
          ),
        ],
      ),
    ),
  );
}
