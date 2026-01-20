import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/repo/hotel_repo.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/presentation/maneger/hotel/hotel_state.dart';

class HotelCubit extends Cubit<HotelState> {
  final HotelRepository repository;

  HotelCubit(this.repository) : super(HotelInitial());

  Future<void> fetchHotels({int page = 1}) async {
    emit(HotelLoading());

    try {
      final hotels = await repository.getHotels(page: page);
      emit(HotelSuccess(hotels));
    } catch (e) {
      emit(HotelError(e.toString()));
    }
  }
}
