part of 'payment_cubit.dart';

enum PaymentTypes { initial, payPal, masterCard, visa }

class PaymentState extends Equatable {
  final PaymentTypes paymentType;

  const PaymentState({this.paymentType = PaymentTypes.initial});

  PaymentState copyWith({PaymentTypes? paymentType}) {
    return PaymentState(paymentType: paymentType ?? this.paymentType);
  }

  @override
  List<Object?> get props => [paymentType];
}
