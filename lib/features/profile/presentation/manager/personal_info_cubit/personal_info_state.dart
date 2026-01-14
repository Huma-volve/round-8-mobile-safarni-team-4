part of 'personal_info_cubit.dart';

abstract class PersonalInfoState {}

class PersonalInfoInitial extends PersonalInfoState {}

class PersonalInfoLoading extends PersonalInfoState {}

class PersonalInfoSuccess extends PersonalInfoState {
  final UserProfileEntity userProfile;

  PersonalInfoSuccess({required this.userProfile});
}

class PersonalInfoFailure extends PersonalInfoState {
  final String errorMessage;

  PersonalInfoFailure({required this.errorMessage});
}
