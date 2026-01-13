import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:round_8_mobile_safarni_team4/core/api/api_result.dart';
import 'package:round_8_mobile_safarni_team4/features/car_booking/domain/entities/search_car_response_entity.dart';

import '../../data/models/search_car_request.dart';
import '../../domain/use_cases/search_car_use_case.dart';

part 'car_appointment_state.dart';

class CarAppointmentCubit extends Cubit<CarAppointmentState> {
  CarAppointmentCubit(this._searchCarUseCase)
    : super(const CarAppointmentState());
  final SearchCarUseCase _searchCarUseCase;

  void doIntent(CarAppointmentIntent intent) {
    switch (intent) {
      case SearchCarIntent():
        _searchCar(searchCarRequest: intent.searchCarRequest);
    }
  }

  _searchCar({required SearchCarRequest searchCarRequest}) async {
    emit(state.copyWith(searchCarStatus: Status.loading));

    final result = await _searchCarUseCase.execute(
      searchCarRequest: searchCarRequest,
    );
    switch (result) {
      case Success<SearchCarResponseEntity>():
        emit(
          state.copyWith(
            searchCarStatus: Status.success,
            searchCarResponseEntity: result.data,
          ),
        );
      case Error<SearchCarResponseEntity>():
        emit(
          state.copyWith(
            searchCarStatus: Status.error,
            searchCarError: result.error,
          ),
        );
    }
  }
}

sealed class CarAppointmentIntent {
  const CarAppointmentIntent();
}

class SearchCarIntent extends CarAppointmentIntent {
  final SearchCarRequest searchCarRequest;

  SearchCarIntent({required this.searchCarRequest});
}
