import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_response_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/sign_up_entites/sign_up_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/use_case/sign_up_use_case.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.signUpUseCase}) : super(SignUpInitial());
  final SignUpUseCase signUpUseCase;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    emit(SignUpLoading());
    final result = await signUpUseCase.call(
      param: SignUpRequestEntity(
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ),
    );
    result.fold(
      (failure) {
        emit(SignUpFailure(errorMessage: failure.errorMessage));
      },
      (signUpResponse) {
        emit(SignUpSuccess(signUpResponseEntity: signUpResponse));
      },
    );
  }

  @override
  Future<void> close() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    return super.close();
  }
}
