import 'package:flutter/material.dart';

import '../../../../core/colors/app_colors.dart';
import 'credit_card_widget.dart';

class PaymentSelectorItem extends StatelessWidget {
  const PaymentSelectorItem({
    super.key,
    this.isSelected = false,
    required this.paymentSelectorModel,
  });

  final bool isSelected;
  final PaymentSelectorModel paymentSelectorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color:
        isSelected
            ? AppColors.mainColorLight.withOpacity(0.1)
            : AppColors.gray.withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ImageContainer(image: paymentSelectorModel.icon),
          const SizedBox(width: 8),
          Text(
            paymentSelectorModel.title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: isSelected ? AppColors.mainColorLight : AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentSelectorModel {
  final String title;
  final String icon;

  PaymentSelectorModel({required this.title, required this.icon});
}