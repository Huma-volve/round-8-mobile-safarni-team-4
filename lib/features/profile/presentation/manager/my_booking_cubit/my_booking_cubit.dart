import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/use_case/get_user_bookings_use_case.dart';

part 'my_booking_state.dart';

class MyBookingCubit extends Cubit<MyBookingState> {
  MyBookingCubit({required this.getUserBookingsUseCase})
    : super(MyBookingInitial());

  final GetUserBookingsUseCase getUserBookingsUseCase;

  Future<void> loadBookings(String type) async {
    emit(MyBookingLoading());
    final result = await getUserBookingsUseCase.call(param: type);
    result.fold(
      (failure) => emit(MyBookingFailure(errorMessage: failure.errorMessage)),
      (bookings) => emit(MyBookingSuccess(bookings: bookings, type: type)),
    );
  }
}
