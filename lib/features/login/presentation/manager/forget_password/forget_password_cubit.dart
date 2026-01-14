import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/forget_password_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/forget_password_use_case.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({required this.forgetPasswordUseCase})
    : super(ForgetPasswordInitial());
  final ForgetPasswordUseCase forgetPasswordUseCase;

  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }

  Future<void> forgetPassword() async {
    emit(ForgetPasswordLoading());
    final result = await forgetPasswordUseCase.call(
      param: emailController.text,
    );
    result.fold(
      (failure) =>
          emit(ForgetPasswordFailure(errorMessage: failure.errorMessage)),
      (forgetPasswordEntity) =>
          emit(ForgetPasswordSuccess(forgetPasswordEntity)),
    );
  }
}
