part of 'verify_code_cubit.dart';

abstract class VerifyCodeState {}

final class VerifyCodeInitial extends VerifyCodeState {}

final class VerifyCodeLoading extends VerifyCodeState {}

final class VerifyCodeSuccess extends VerifyCodeState {
  final UserDataEntity userEntity;
  VerifyCodeSuccess({required this.userEntity});
}

final class VerifyCodeFailure extends VerifyCodeState {
  final String errorMessage;
  VerifyCodeFailure({required this.errorMessage});
}
