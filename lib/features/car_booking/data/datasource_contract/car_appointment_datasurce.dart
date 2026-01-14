import 'package:round_8_mobile_safarni_team4/core/api/api_result.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/models/search_car_request.dart';

import '../../domain/entities/search_car_response_entity.dart';

abstract interface class CarAppointmentDatasource {
  Future<ApiResult<SearchCarResponseEntity>> searchCar({
    required SearchCarRequest searchCarRequest,
  });
}
