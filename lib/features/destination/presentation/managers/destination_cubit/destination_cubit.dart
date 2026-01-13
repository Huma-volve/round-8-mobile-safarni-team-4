import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/tour_details_model.dart';
import '../../../data/repo/destination_rpo.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  final DestinationRepo _destinationRepo;

  DestinationCubit(this._destinationRepo) : super(DestinationInitial());

  Future<void> getTourDetails(int id) async {
    emit(DestinationLoading());
    try {
      final TourDetailsModel tour = await _destinationRepo.getTourDetails(id: id);
      emit(DestinationSuccess(tour:tour));
    } catch (e) {
      // هنا يتم التقاط الـ Exception الذي قمنا برمه في الـ Repo Impl
      emit(DestinationError(e.toString()));
    }
  }
}
