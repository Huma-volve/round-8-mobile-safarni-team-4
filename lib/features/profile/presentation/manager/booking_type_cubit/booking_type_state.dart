part of 'booking_type_cubit.dart';

abstract class BookingTypeState {
  final int selectedIndex;

  BookingTypeState({required this.selectedIndex});
}

class BookingTypeInitial extends BookingTypeState {
  BookingTypeInitial() : super(selectedIndex: 0);
}

class BookingTypeSelected extends BookingTypeState {
  BookingTypeSelected({required super.selectedIndex});
}
