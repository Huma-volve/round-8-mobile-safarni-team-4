part of 'car_appointment_cubit.dart';

enum Status { initial, loading, success, error }

class CarAppointmentState extends Equatable {
  final Status searchCarStatus;
  final SearchCarResponseEntity? searchCarResponseEntity;
  final Object? searchCarError;

  const CarAppointmentState({
    this.searchCarStatus = Status.initial,
    this.searchCarError,
    this.searchCarResponseEntity,
  });

  CarAppointmentState copyWith({
    Status? searchCarStatus,
    SearchCarResponseEntity? searchCarResponseEntity,
    Object? searchCarError,
  }) {
    return CarAppointmentState(
      searchCarError: searchCarError ?? this.searchCarError,
      searchCarResponseEntity:
          searchCarResponseEntity ?? this.searchCarResponseEntity,
      searchCarStatus: searchCarStatus ?? this.searchCarStatus,
    );
  }

  @override
  List<Object?> get props => [
    searchCarError,
    searchCarResponseEntity,
    searchCarStatus,
  ];
}
