part of 'my_booking_cubit.dart';

abstract class MyBookingState {}

class MyBookingInitial extends MyBookingState {}

class MyBookingLoading extends MyBookingState {}

class MyBookingSuccess extends MyBookingState {
  final List<BookingEntity> bookings;
  final String type;

  MyBookingSuccess({required this.bookings, required this.type});
}

class MyBookingFailure extends MyBookingState {
  final String errorMessage;

  MyBookingFailure({required this.errorMessage});
}
