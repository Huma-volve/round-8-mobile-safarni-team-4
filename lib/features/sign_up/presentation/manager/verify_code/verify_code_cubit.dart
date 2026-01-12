import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/verify_code_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/use_case/verify_code_use_case.dart';

part 'verify_code_state.dart';

class VerifyCodeCubit extends Cubit<VerifyCodeState> {
  VerifyCodeCubit({required this.verCodeUseCase}) : super(VerifyCodeInitial());
  final VerifyCodeUseCase verCodeUseCase;
  TextEditingController otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> verifyCode({required int userId, required String email}) async {
    emit(VerifyCodeLoading());
    final result = await verCodeUseCase.call(
      param: VerifyCodeRequestEntity(
        userId: userId,
        otp: otpController.text,
        email: email,
      ),
    );
    result.fold(
      (failure) => emit(VerifyCodeFailure(errorMessage: failure.errorMessage)),
      (userEntity) => emit(VerifyCodeSuccess(userEntity: userEntity)),
    );
  }
}
