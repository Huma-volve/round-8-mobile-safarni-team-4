// core/network/home_remote_data_source.dart (أو في فولدر الـ destination)

import '../../../../core/network/api_service.dart';
import '../model/tour_details_model.dart';

abstract class DestinationRemoteDataSource {
  Future<TourDetailsModel> getTourDetails({required int id});
}

class DestinationRemoteDataSourceImpl implements DestinationRemoteDataSource {
  final ApiService _apiService;

  DestinationRemoteDataSourceImpl(this._apiService);

  @override
  Future<TourDetailsModel> getTourDetails({required int id}) async {
    // نمرر الـ ID في الـ URL كما هو مطلوب tours/1
    final response = await _apiService.get(urlEndPoint: 'tours/$id');

    // نرسل الـ 'data' الموجودة داخل الـ JSON للـ Model
    return TourDetailsModel.fromJson(response['data']);
  }
}