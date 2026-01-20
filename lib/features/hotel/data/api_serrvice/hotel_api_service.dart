import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/get_all_hotels/hotel_response.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/hotel_detailes/hotel_available_rooms_model_response.dart';
part 'hotel_api_service.g.dart';

@RestApi(baseUrl: 'https://round8-safarni-team-three.huma-volve.com/api')
abstract class HotelApiService {
  factory HotelApiService(Dio dio, {String baseUrl}) =
      _HotelApiService;

  @GET('/hotel')
  Future<HotelResponse> getHotels({
    @Query('page') int page = 1,
  });
@GET('/hotel/{id}')
  Future<HotelAvailableRoomsResponseModel> getHotelDetailsById(@Path('id') int id);
  
}
