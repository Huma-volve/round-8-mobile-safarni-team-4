import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';

abstract class BookingRepo {
  Future<Either<Failure, List<BookingEntity>>> getUserBookings({
    required String type,
  });
}
