import 'package:flutter_bloc/flutter_bloc.dart';

part 'booking_type_state.dart';

class BookingTypeCubit extends Cubit<BookingTypeState> {
  BookingTypeCubit() : super(BookingTypeInitial());

  void selectBookingType(int index) {
    emit(BookingTypeSelected(selectedIndex: index));
  }

  String getBookingTypeFromIndex(int index) {
    switch (index) {
      case 0:
        return 'Flight';
      case 1:
        return 'Car';
      case 2:
        return 'Tour';
      case 3:
        return 'Hotel';
      default:
        return 'Flight';
    }
  }
}
