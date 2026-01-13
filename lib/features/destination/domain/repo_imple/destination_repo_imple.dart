// destination_repo_impl.dart

import '../../data/api_service/tour_details_remote_data_source.dart';
import '../../data/model/tour_details_model.dart';
import '../../data/repo/destination_rpo.dart';

class DestinationRepoImpl implements DestinationRepo {
  final DestinationRemoteDataSource _destinationRemoteDataSource;

  DestinationRepoImpl(this._destinationRemoteDataSource);

  @override
  Future<TourDetailsModel> getTourDetails({required int id}) async {
    try {
      // استدعاء البيانات وإرجاعها مباشرة
      final tourDetails = await _destinationRemoteDataSource.getTourDetails(id: id);
      return tourDetails;
    } catch (e) {
      // هنا نقوم برمي الخطأ كما هو أو تخصيصه
      throw Exception(e.toString());
    }
  }
}