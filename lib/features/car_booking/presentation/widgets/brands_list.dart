import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/helpers/size_config_extension.dart';
import '../../../../core/constants/assets_paths.dart';
import 'brand_card.dart';

class BrandsList extends StatefulWidget {
  const BrandsList({super.key});

  @override
  State<BrandsList> createState() => _BrandsListState();
}

class _BrandsListState extends State<BrandsList> {
  final List<BrandModel> brands = [
    BrandModel(logo: AssetsPaths.mercedesLogo, name: 'Mercedes', count: '+32'),
    BrandModel(logo: AssetsPaths.bmwLogo, name: 'BMW', count: '+12'),
    BrandModel(logo: AssetsPaths.renaultLogo, name: 'Renault', count: '+8'),
    BrandModel(logo: AssetsPaths.porcheLogo, name: 'Porsche', count: '+5'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: brands.length,
      separatorBuilder: (context, index) => context.gapW(8),
      itemBuilder: (context, index) => BrandCard(model: brands[index]),
    );
  }
}

class BrandModel {
  final String logo;
  final String name;
  final String count;

  BrandModel({required this.logo, required this.name, required this.count});
}
