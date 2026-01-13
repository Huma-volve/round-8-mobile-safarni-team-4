import 'package:json_annotation/json_annotation.dart';
import 'package:round_8_mobile_safarni_team4/features/favorite/domain/entity/favorite_entity.dart';
part 'favorite_response_model.g.dart';

@JsonSerializable()
class FavoriteResponseModel  {
  final List<FavoriteModel> favoritemodel;
  final String status;
  final String message;

  FavoriteResponseModel({
    required this.favoritemodel,
    required this.status,
    required this.message,
  });

  factory FavoriteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteResponseModelToJson(this);
}
@JsonSerializable()
class FavoriteModel {
  int id;
  String title;
  String image;
  int duration;
  @JsonKey(name: 'rating_average')
  int ratingAverage;

  FavoriteModel({
    required this.id,
    required this.title,
    required this.image,
    required this.duration,
    required this.ratingAverage,
  });
  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}
