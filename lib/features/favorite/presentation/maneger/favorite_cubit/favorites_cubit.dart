import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/model/favorite_response_model.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/repo/favorite_repo.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(this.favoriteRepo) : super(FavoritesInitial());

  final FavoriteRepo favoriteRepo ;

  Future<void> fetchFavotite()async{
    emit(FavoritesLoading());
    try {
      final favorites = await favoriteRepo.getFavorites();
      emit(FavoriteSuccess(favoriteList: favorites));
    } catch (e) {
      emit(FavoriteError(message: e.toString()));
    }
  }

  Future<void> deleteFavorite(int id) async {
  try {
    await favoriteRepo.deleteFavorite(id);
    emit(DeleteFavorite(id: id));
    fetchFavotite(); // refresh list
  } catch (e) {
    emit(FavoriteError(message: e.toString()));
  }
}

   
  }

