import 'package:round_8_mobile_safarni_team4/core/api/api_result.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/data/datasource_contract/car_appointment_datasurce.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';

import '../../domain/repo_contract/car_appointment_repo.dart';
import '../models/search_car_request.dart';

class CarAppointmentRepoImpl implements CarAppointmentRepo {
  final CarAppointmentDatasource _datasource;

  CarAppointmentRepoImpl(this._datasource);

  @override
  Future<ApiResult<SearchCarResponseEntity>> searchCar({
    required SearchCarRequest searchCarRequest,
  }) {
    return _datasource.searchCar(searchCarRequest: searchCarRequest);
  }
}
