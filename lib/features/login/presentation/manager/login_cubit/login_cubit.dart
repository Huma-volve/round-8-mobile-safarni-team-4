import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/entites/login_request_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/login/domain/use_case/login_use_case.dart';
import 'package:round_8_mobile_safarni_team4/features/sign_up/domain/entities/verify_code_entity.dart/user_data_entity.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginUseCase}) : super(LoginInitial());
  final LoginUseCase loginUseCase;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(LoginLoading());
    final result = await loginUseCase.call(
      param: LoginRequestEntity(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    result.fold(
      (failure) => emit(LoginFailure(errorMessage: failure.errorMessage)),
      (userDataEntity) => emit(LoginSuccess(userDataEntity: userDataEntity)),
    );
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
