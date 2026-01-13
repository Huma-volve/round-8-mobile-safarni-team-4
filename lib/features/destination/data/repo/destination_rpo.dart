// destination_repo.dart

import '../model/tour_details_model.dart';

abstract class DestinationRepo {
  Future<TourDetailsModel> getTourDetails({required int id});
}