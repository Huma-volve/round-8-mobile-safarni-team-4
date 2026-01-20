part of 'favorites_cubit.dart';

sealed class FavoritesState extends Equatable {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

final class FavoritesInitial extends FavoritesState {}
final class FavoritesLoading extends FavoritesState {}
final class FavoriteSuccess extends FavoritesState {
  final List<FavoriteModel> favoriteList;
  const FavoriteSuccess({required this.favoriteList});
  @override
  List<Object> get props => [favoriteList];
}

final class FavoriteError extends FavoritesState {
  final String message;
  const FavoriteError({required this.message});
  @override
  List<Object> get props => [message];
}

final class DeleteFavorite extends FavoritesState {
  final int id;
  const DeleteFavorite({required this.id});
  @override
  List<Object> get props => [id];
}
