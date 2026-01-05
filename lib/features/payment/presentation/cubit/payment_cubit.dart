import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(const PaymentState());

  void doIntent(PaymentIntent intent) {
    switch (intent) {
      case ChangePaymentType():
        _changePaymentType(intent.paymentType);
    }
  }

  void _changePaymentType(PaymentTypes paymentType) {
    emit(state.copyWith(paymentType: paymentType));
  }
}

sealed class PaymentIntent {
  const PaymentIntent();
}

class ChangePaymentType extends PaymentIntent {
  final PaymentTypes paymentType;

  const ChangePaymentType(this.paymentType);
}
