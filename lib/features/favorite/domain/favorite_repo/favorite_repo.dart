import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/error/faliar.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/entity/favorite_entity.dart';

abstract class FavoriteRepo {
  
//instead of try catch block use Either class return two types error and success if needed, you can define error types for Either
// here Faliar is error type and List<FavoriteEntity> is success type
  Future<Either<Faliar, List<FavoriteEntity>>> fetchFeaturedFavorites();
}