import '../../data/api_service/home_remote_data_source.dart';
import '../../data/model/model_tours.dart';
import '../../data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _homeRemoteDataSource;

  HomeRepoImpl(this._homeRemoteDataSource);

  @override
  Future<List<Tours>> getRecommendedTours() async {
    return await _homeRemoteDataSource.getRecommendedTours();
  }

  @override
  Future<List<Tours>> getAvailableTours() async {
    return await _homeRemoteDataSource.getAvailableTours();
  }
}