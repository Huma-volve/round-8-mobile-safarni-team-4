import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/reset_password_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/reset_password_use_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit({required this.resetPasswordUseCase})
      : super(ResetPasswordInitial());

  final ResetPasswordUseCase resetPasswordUseCase;

  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> resetPassword({
    required int userId,
    required String otp,
  }) async {
    emit(ResetPasswordLoading());
    final result = await resetPasswordUseCase.call(
      param: ResetPasswordRequestEntity(
        userId: userId,
        otp: otp,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );

    result.fold(
      (failure) => emit(ResetPasswordFailure(errorMessage: failure.errorMessage)),
      (entity) => emit(ResetPasswordSuccess(message: entity.message)),
    );
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}



