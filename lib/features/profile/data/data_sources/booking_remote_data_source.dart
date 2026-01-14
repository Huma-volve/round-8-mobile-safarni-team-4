import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/models/booking_model.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';

abstract class BookingRemoteDataSource {
  Future<List<BookingEntity>> getUserBookings({required String type});
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  final ApiService apiService;

  BookingRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<BookingEntity>> getUserBookings({required String type}) async {
    final response = await apiService.get(
      urlEndPoint: ApisEndpoints.getUserBookings,
      queryParameters: {'type': type},
    );
    final data = response['data'] as List<dynamic>? ?? [];
    return BookingModel.fromJsonList(data);
  }
}
