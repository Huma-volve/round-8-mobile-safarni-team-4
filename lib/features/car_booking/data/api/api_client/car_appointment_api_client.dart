import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/models/search_car_request.dart';
import '../../../../../core/network/api_end_points.dart';
import '../../models/search_car_response.dart';

part 'car_appointment_api_client.g.dart';

@RestApi(baseUrl: ApisEndpoints.baseUrl)
abstract class CarAppointmentApiClient {
  factory CarAppointmentApiClient(Dio dio) = _CarAppointmentApiClient;

  @POST(ApisEndpoints.searchCar)
  Future<SearchCarResponse> searchCar(@Body() SearchCarRequest searchRequest);
}
