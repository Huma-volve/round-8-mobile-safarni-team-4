import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:round_8_mobile_safarni_team4/core/network/api_end_points.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/model/favorite_response_model.dart';
part 'favorite_remote_data_source.g.dart';

@RestApi(baseUrl: ApiEndPoints.baseUrl)
abstract class FavoriteRemoteDataSource {
  factory FavoriteRemoteDataSource(Dio dio) = _FavoriteRemoteDataSource;

  @GET("favorites")
  Future<FavoriteResponseModel> getFavorites();
@DELETE( "favorites/{id}")
  Future<void> deleteFavorite(@Path("id") int id);
  
}
