import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/compare/data/compar_model.dart';

class CompareItem extends StatelessWidget {
  const CompareItem({super.key, required this.comparModel});

  final ComparModel comparModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(comparModel.image, width: 100, height: 100),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(comparModel.title),
              Text(comparModel.time),
              FittedBox(
                child: Text(
                  comparModel.subTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
