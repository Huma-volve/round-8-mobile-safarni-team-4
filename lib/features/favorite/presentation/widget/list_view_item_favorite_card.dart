import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/core/di/service_locator.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/maneger/favorite_cubit/favorites_cubit.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/widget/item_favorite_card.dart';

class ListViewItemFavoriteCard extends StatelessWidget {
  const ListViewItemFavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>getIt<FavoritesCubit>()..fetchFavotite(),
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          if (state is FavoritesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavoriteSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.favoriteList.length,
                itemBuilder: (context, index) {
                  return ItemFavoriteCard(
                    favoriteModel: state.favoriteList[index],
                  );
                },
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
