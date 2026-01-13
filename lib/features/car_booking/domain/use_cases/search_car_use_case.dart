import '../../../../core/api/api_result.dart';
import '../../data/models/search_car_request.dart';
import '../entities/search_car_response_entity.dart';
import '../repo_contract/car_appointment_repo.dart';

class SearchCarUseCase {
  final CarAppointmentRepo _carAppointmentRepo;

  SearchCarUseCase(this._carAppointmentRepo);

  Future<ApiResult<SearchCarResponseEntity>> execute({
    required SearchCarRequest searchCarRequest,
  }) => _carAppointmentRepo.searchCar(searchCarRequest: searchCarRequest);
}
