import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/data/favorite_model.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/presentation/widget/favorite_view_body.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FavoriteViewBody(favoriteModel: favoriteList[0]));
  }
}
