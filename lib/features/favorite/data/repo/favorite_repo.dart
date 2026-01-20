import 'package:round_8_mobile_safarni_team4/features/favorite/data/data_source/favorite_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/model/favorite_response_model.dart';

class FavoriteRepo {
  FavoriteRemoteDataSource favoriteRemoteDataSource;
  FavoriteRepo(this.favoriteRemoteDataSource);

  Future<List<FavoriteModel>> getFavorites() async {
   FavoriteResponseModel response = await favoriteRemoteDataSource.getFavorites();
    return response.data;
  }
  Future<void> deleteFavorite(int id) async {
    await favoriteRemoteDataSource.deleteFavorite(id);
  }
}
