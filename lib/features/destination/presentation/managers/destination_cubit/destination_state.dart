part of 'destination_cubit.dart';

@immutable
sealed class DestinationState {}

final class DestinationInitial extends DestinationState {}
final class DestinationLoading extends DestinationState {}
final class DestinationSuccess extends DestinationState {
  final TourDetailsModel tour;

  DestinationSuccess({required this.tour});
}
final class DestinationError extends DestinationState {
  final String errMess;

  DestinationError(this.errMess);
}

