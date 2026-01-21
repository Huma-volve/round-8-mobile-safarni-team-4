import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/room_detailes_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';

part 'room_detailes_state.dart';

class RoomDetailesCubit extends Cubit<RoomDetailesState> {
  final HotelRepository repository;
  RoomDetailesCubit(this.repository) : super(RoomDetailesInitial());

  Future<void> fetchRoomDetailes(int roomId)async {
    emit(RoomDetailesLoading());
    try{
      var roomDetailes = await repository.getRoomDetailsById(roomId);
      emit(RoomDetailedSuccess(roomDetailes));  

    }catch(e){
      emit(RoomDetailesError(e.toString()));
    }
  }
}
