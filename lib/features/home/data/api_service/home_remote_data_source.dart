import 'package:round_8_mobile_safarni_team4/core/network/api_service.dart';

import '../../../../core/network/api_end_points.dart';
import '../model/model_tours.dart';

class HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSource(this._apiService);

  Future<List<Tours>> getRecommendedTours() async {
    final response = await _apiService.get(urlEndPoint: '${ApiEndPoints.baseUrl}tours/recommended');
    final List data = response['data'];
    return data.map((e) => Tours.fromJson(e)).toList();
  }
  // home_remote_data_source.dart

  Future<List<Tours>> getAvailableTours() async {
    // الـ API الخاص بـ Available Tours هو /tours
    final response = await _apiService.get(urlEndPoint: 'tours');
    final List data = response['data'];
    return data.map((e) => Tours.fromJson(e)).toList();
  }

}