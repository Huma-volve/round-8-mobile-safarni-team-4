part of 'room_detailes_cubit.dart';

sealed class RoomDetailesState extends Equatable {
  const RoomDetailesState();

  @override
  List<Object> get props => [];
}

final class RoomDetailesInitial extends RoomDetailesState {}
final class RoomDetailesLoading extends RoomDetailesState {}
final class RoomDetailedSuccess extends RoomDetailesState {
  final RoomDetailesModelResponse roomDetailes;
  const RoomDetailedSuccess(this.roomDetailes);
}
final class RoomDetailesError extends RoomDetailesState {
  final String message;
  const RoomDetailesError(this.message);
}

