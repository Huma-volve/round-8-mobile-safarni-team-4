import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/favorite_model.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/view/favorite_view.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/widget/list_view_item_favorite_card.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key, required this.favoriteModel});
  final FavoriteModel favoriteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 100),
            const Center(
              child: Text(
                "Favorite",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        const ListViewItemFavoriteCard(),
      ],
    );
  }
}