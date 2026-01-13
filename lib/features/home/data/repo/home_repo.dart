// Repository Interface
import '../api_service/home_remote_data_source.dart';
import '../model/model_tours.dart';

abstract class HomeRepo {
  Future<List<Tours>> getRecommendedTours();
  Future<List<Tours>> getAvailableTours();
}

// Repository Implementation
