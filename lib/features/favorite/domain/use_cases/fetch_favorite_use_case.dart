import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/entity/favorite_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/favorite_repo/favorite_repo.dart';

import '../../../../core/error/faliar.dart';

abstract class FetchFavoriteUseCase {
  FavoriteRepo favoriteRepo; // dependency injection  ,
  FetchFavoriteUseCase(this.favoriteRepo);

  Future<Either<Faliar, List<FavoriteEntity>>> fetchFeaturedFavorites() =>
      favoriteRepo.fetchFeaturedFavorites();
}
