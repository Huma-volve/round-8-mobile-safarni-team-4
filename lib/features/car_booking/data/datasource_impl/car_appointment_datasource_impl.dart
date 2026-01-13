import 'package:round_8_mobile_safarni_team4/core/api/api_executer.dart';
import 'package:round_8_mobile_safarni_team4/core/api/api_result.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/datasource_contract/car_appointment_datasurce.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/models/search_car_request.dart';

import '../../domain/entities/search_car_response_entity.dart';
import '../api/api_client/car_appointment_api_client.dart';
import '../models/search_car_response.dart';

class CarAppointmentDatasourceImpl implements CarAppointmentDatasource {
  final CarAppointmentApiClient _apiClient;

  CarAppointmentDatasourceImpl(this._apiClient);

  @override
  Future<ApiResult<SearchCarResponseEntity>> searchCar({
    required SearchCarRequest searchCarRequest,
  }) async {
    var result = await ApiExecutor.execute(() => _apiClient.searchCar(searchCarRequest));

    switch (result) {
      case Success<SearchCarResponse>():
        return Success(data: result.data.toEntity());
      case Error<SearchCarResponse>():
        return Error(error: result.error);
    }
  }
}
