import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';

import 'hotel_availables_room_state.dart';
class HotelRoomsCubit extends Cubit<HotelRoomsState> {
  final HotelRepository repository;

  HotelRoomsCubit(this.repository) : super(HotelRoomsInitial());

  Future<void> fetchHotelRooms(int hotelId) async {
    emit(HotelRoomsLoading());
    try {
      final rooms = await repository.getHotelRooms(hotelId);
      emit(HotelRoomsSuccess(rooms));
    } catch (e) {
      emit(HotelRoomsError('Failed to load rooms'));
    }
  }
}
// 1. States
