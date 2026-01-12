part of 'sign_up_cubit.dart';

sealed class SignUpState {}

final class SignUpInitial extends SignUpState {}

final class SignUpLoading extends SignUpState {}

final class SignUpSuccess extends SignUpState {
  final SignUpResponseEntity signUpResponseEntity;
  SignUpSuccess({required this.signUpResponseEntity});
}

final class SignUpFailure extends SignUpState {
  final String errorMessage;
  SignUpFailure({required this.errorMessage});
}
