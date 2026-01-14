import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/data/data_sources/booking_remote_data_source.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/booking_repo.dart';

class BookingRepoImpl implements BookingRepo {
  final BookingRemoteDataSource bookingRemoteDataSource;

  BookingRepoImpl({required this.bookingRemoteDataSource});

  @override
  Future<Either<Failure, List<BookingEntity>>> getUserBookings({
    required String type,
  }) async {
    try {
      final result = await bookingRemoteDataSource.getUserBookings(type: type);
      return Right(result);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
