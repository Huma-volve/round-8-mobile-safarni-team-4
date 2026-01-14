import 'package:round_8_mobile_safarni_team4/features/profile/data/models/user_profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserProfileModel> getUserProfile();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final dynamic dio;

  ProfileRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserProfileModel> getUserProfile() async {
    try {
      final response = await dio.get('/profile');
      return UserProfileModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
