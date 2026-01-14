part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

class HomeInitial extends HomeState {}

// حالات الـ Recommendations
class HomeRecommendedLoading extends HomeState {}
class HomeRecommendedSuccess extends HomeState {
  final List<Tours> tours;
  HomeRecommendedSuccess(this.tours);
}
class HomeRecommendedError extends HomeState {
  final String message;
  HomeRecommendedError(this.message);
}

// حالات الـ Available Tours
class HomeToursLoading extends HomeState {}
class HomeToursSuccess extends HomeState {
  final List<Tours> tours;
  HomeToursSuccess(this.tours);
}
class HomeToursError extends HomeState {
  final String message;
  HomeToursError(this.message);
}