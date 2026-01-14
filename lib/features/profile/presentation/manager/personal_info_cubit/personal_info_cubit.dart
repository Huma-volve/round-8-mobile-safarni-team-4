import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/user_profile_entity.dart';
import 'package:round_8_mobile_safarni_team4/features/profile/domain/use_case/get_user_profile_use_case.dart';

part 'personal_info_state.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  PersonalInfoCubit({required this.getUserProfileUseCase})
    : super(PersonalInfoInitial());

  final GetUserProfileUseCase getUserProfileUseCase;

  Future<void> loadUserProfile() async {
    emit(PersonalInfoLoading());
    final result = await getUserProfileUseCase.call();
    result.fold(
      (failure) => emit(PersonalInfoFailure(errorMessage: failure.errorMessage)),
      (userProfile) => emit(PersonalInfoSuccess(userProfile: userProfile)),
    );
  }
}
