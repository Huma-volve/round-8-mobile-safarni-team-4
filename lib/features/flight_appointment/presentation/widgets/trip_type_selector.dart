import 'package:flutter/material.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../core/constants/assets_paths.dart';

class TripTypeSelector extends StatefulWidget {
  const TripTypeSelector({super.key});

  @override
  State<TripTypeSelector> createState() => _TripTypeSelectorState();
}

class _TripTypeSelectorState extends State<TripTypeSelector> {
  int _selectedIndex = 0;
  final List<TripTypeModel> _tripTypes = [
    TripTypeModel(title: 'Round Trip', icon: AssetsPaths.roundTripIcon),
    TripTypeModel(title: 'Multi City', icon: AssetsPaths.multiCityIcon),
    TripTypeModel(title: 'One Way', icon: AssetsPaths.oneWayIcon),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemCount: _tripTypes.length,
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
            child: TripTypeItem(
              tripTypeModel: _tripTypes[index],
              isSelected: _selectedIndex == index,
            ),
          ),
    );
  }
}

class TripTypeItem extends StatelessWidget {
  const TripTypeItem({
    super.key,
    this.isSelected = false,
    required this.tripTypeModel,
  });

  final bool isSelected;
  final TripTypeModel tripTypeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color:
            isSelected
                ? AppColors.mainColorLight.withOpacity(0.1)
                : AppColors.gray.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(tripTypeModel.icon),
            color: isSelected ? AppColors.mainColorLight : AppColors.gray,
            size: 20,
          ),
          const SizedBox(width: 8),
          Text(
            tripTypeModel.title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: isSelected ? AppColors.mainColorLight : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class TripTypeModel {
  final String title;
  final String icon;

  TripTypeModel({required this.title, required this.icon});
}
