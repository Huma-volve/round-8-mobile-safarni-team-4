import 'package:dartz/dartz.dart';
import 'package:round_8_mobile_safarni_team4/core/failure/failures.dart';
import 'package:round_8_mobile_safarni_team4/core/use_case/use_case_with_param.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/repos/booking_repo.dart';

class GetUserBookingsUseCase extends UseCase<List<BookingEntity>, String> {
  final BookingRepo bookingRepo;

  GetUserBookingsUseCase({required this.bookingRepo});

  @override
  Future<Either<Failure, List<BookingEntity>>> call({
    required String param,
  }) async {
    return await bookingRepo.getUserBookings(type: param);
  }
}
