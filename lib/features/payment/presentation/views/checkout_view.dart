import 'package:flutter/material.dart';
import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';
import 'package:round_8_mobile_safarni_team4/core/routing/app_routes.dart';
import '../../../../core/colors/app_colors.dart';
import '../cubit/payment_cubit.dart';
import '../widgets/credit_card_widget.dart';
import '../widgets/initial_body.dart';
import '../widgets/master_card_and_visa_body.dart';
import '../widgets/payment_selector.dart';
import '../widgets/payment_selector_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/paypal_body.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<PaymentSelectorModel> paymentSelectorModels = [
    PaymentSelectorModel(title: 'PayPal', icon: AssetsPaths.payPalIcon),
    PaymentSelectorModel(title: 'MasterCard', icon: AssetsPaths.masterCardIcon),
    PaymentSelectorModel(title: 'Visa', icon: AssetsPaths.visaIcon),
  ];
  final PaymentCubit paymentCubit = PaymentCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back_ios, color: AppColors.black, size: 20),
        ),
        title: const Text('Payment Method'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: BlocProvider(
            create: (context) => paymentCubit,
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(flex: 9, child: CreditCardView()),
                Expanded(
                  flex: 2,
                  child: PaymentSelector(
                    paymentSelectorModels: paymentSelectorModels,
                  ),
                ),
                const Expanded(flex: 8, child: PaymentForm()),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.paymentSuccess);
                    },
                    child: const Text('Continue Booking'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        switch (state.paymentType) {
          case PaymentTypes.initial:
            return const InitialBody();
          case PaymentTypes.payPal:
            return const PayPalBody();
          case PaymentTypes.masterCard:
            return const MasterCardAndVisaBody();
          case PaymentTypes.visa:
            return const MasterCardAndVisaBody();
        }
      },
    );
  }
}
