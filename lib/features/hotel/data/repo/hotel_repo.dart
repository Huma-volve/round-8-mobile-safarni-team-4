import 'package:round_8_mobile_safarni_team4/features/hotel/data/api_serrvice/hotel_api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/get_all_hotels/hotel_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/room_detailes_model.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart' hide HotelModel;

import '../model/hotel_available_rooms/rooms_model.dart';



class HotelRepository {
  final HotelApiService apiService;

  HotelRepository(this.apiService);

  Future<List<HotelModel>> getHotels({int page = 1}) async {
    final response = await apiService.getHotels(page: page);
    return response.data;
  }

   Future<List<RoomItemModel>> getHotelRooms(int id) async {
    var response = await apiService.getHotelDetailsById(id);
    return response.data.rooms.data;
  }

  Future<RoomDetailesModelResponse> getRoomDetailsById(int id) async {
    var roomDetails = await apiService.getRoomDetailsById(id);
    return roomDetails;
  }
}
