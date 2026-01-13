import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/error/faliar.dart';

abstract class UseCase<T, Params> {       // generic type T for different return types
  Future<Either<Faliar, T>> call([Params params]);
}
class NoParams {}