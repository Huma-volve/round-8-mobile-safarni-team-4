import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/entity/favorite_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/favorite_repo/favorite_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/use_cases/use_case.dart';

import '../../../../core/error/faliar.dart';

class FetchFavoriteUseCase extends UseCase<List<FavoriteEntity>, NoParams> { // extends UseCase<List<FavoriteEntity>, NoParams> {
  FavoriteRepo favoriteRepo; // dependency injection  ,
  FetchFavoriteUseCase(this.favoriteRepo);
  
  @override
  Future<Either<Faliar, List<FavoriteEntity>>> call([NoParams? params]) {
return favoriteRepo.fetchFeaturedFavorites();
  }
}

