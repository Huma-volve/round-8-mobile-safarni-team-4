import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';

abstract class UseCase<T> {
  Future<Either<Failure, T>> call();
}
