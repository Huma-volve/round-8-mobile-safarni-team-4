import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/model_tours.dart';
import '../../../data/repo/home_repo.dart';

part 'home_state.dart';

// home_cubit.dart

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeInitial());

  // الدالة الخاصة بالـ Recommendations
  Future<void> getRecommendedTours() async {
    emit(HomeRecommendedLoading());
    try {
      final tours = await _homeRepo.getRecommendedTours();
      emit(HomeRecommendedSuccess(tours));
    } catch (e) {
      emit(HomeRecommendedError(e.toString()));
    }
  }

  // الدالة الخاصة بالـ Available Tours
  Future<void> getAvailableTours() async {
    emit(HomeToursLoading());
    try {
      final tours = await _homeRepo.getAvailableTours();
      emit(HomeToursSuccess(tours));
    } catch (e) {
      emit(HomeToursError(e.toString()));
    }
  }
}
