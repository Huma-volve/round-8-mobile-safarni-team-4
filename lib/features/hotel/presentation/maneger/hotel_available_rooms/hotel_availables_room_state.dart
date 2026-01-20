

import '../../../data/model/hotel_available_rooms/rooms_model.dart';

abstract class HotelRoomsState {}

class HotelRoomsInitial extends HotelRoomsState {}

class HotelRoomsLoading extends HotelRoomsState {}

class HotelRoomsSuccess extends HotelRoomsState {
  final List<RoomItemModel> rooms;

  HotelRoomsSuccess(this.rooms);
}

class HotelRoomsError extends HotelRoomsState {
  final String message;

  HotelRoomsError(this.message);
}