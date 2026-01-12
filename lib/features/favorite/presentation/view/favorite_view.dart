import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/favorite_model.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FavoriteViewBody(favoriteModel: favoriteList[0]));
  }
}

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

class ItemFavoriteCard extends StatelessWidget {
  const ItemFavoriteCard({super.key, required this.favoriteModel});

  final FavoriteModel favoriteModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/travel.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favoriteModel.tourType,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                  ),
                ),
                Text(
                  favoriteModel.cardTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Text(
                  favoriteModel.price,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
