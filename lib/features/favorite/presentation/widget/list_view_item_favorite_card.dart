import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/favorite_model.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/view/favorite_view.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/widget/item_favorite_card.dart';

class ListViewItemFavoriteCard extends StatelessWidget {
  const ListViewItemFavoriteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: ListView.builder(
            itemCount: favoriteList.length,
            itemBuilder: (context, index) {
              return ItemFavoriteCard(favoriteModel: favoriteList[index]);
            },
          ),
        );
  }
}