part of 'forget_password_cubit.dart';

abstract class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ForgetPasswordLoading extends ForgetPasswordState {}

final class ForgetPasswordSuccess extends ForgetPasswordState {
  final ForgetPasswordEntity forgetPasswordEntity;
  ForgetPasswordSuccess(this.forgetPasswordEntity);
}

final class ForgetPasswordFailure extends ForgetPasswordState {
  final String errorMessage;
  ForgetPasswordFailure({required this.errorMessage});
}
