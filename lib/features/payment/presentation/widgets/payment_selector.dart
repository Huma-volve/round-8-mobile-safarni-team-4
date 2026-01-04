import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/features/payment/presentation/widgets/payment_selector_item.dart';
import '../cubit/payment_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentSelector extends StatefulWidget {
  const PaymentSelector({super.key, required this.paymentSelectorModels});

  final List<PaymentSelectorModel> paymentSelectorModels;

  @override
  State<PaymentSelector> createState() => _PaymentSelectorState();
}

class _PaymentSelectorState extends State<PaymentSelector> {
  int? _selectedIndex ;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              context.read<PaymentCubit>().doIntent(
                ChangePaymentType(
                  getPaymentType(widget.paymentSelectorModels[index].title),
                ),
              );
              setState(() {
                _selectedIndex = index;
              });
            },
            child: PaymentSelectorItem(
              isSelected: _selectedIndex == index,
              paymentSelectorModel: widget.paymentSelectorModels[index],
            ),
          ),
      separatorBuilder: (context, index) => SizedBox(width: 8),
      itemCount: widget.paymentSelectorModels.length,
    );
  }

  PaymentTypes getPaymentType(String title) {
    switch (title) {
      case 'PayPal':
        return PaymentTypes.payPal;
      case 'MasterCard':
        return PaymentTypes.masterCard;
      case 'Visa':
        return PaymentTypes.visa;
    }
    return PaymentTypes.initial;
  }
}
