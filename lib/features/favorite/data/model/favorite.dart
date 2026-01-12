// import 'package:json_annotation/json_annotation.dart';
// part 'favorite.g.dart';
// @JsonSerializable()
// class FavoriteModel {
//   final List<FavoriteDate> favoriteDate;
//   final String status;
//   final String message;

//   FavoriteModel({required this.favoriteDate , required this.status, required this.message});
//   factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
//       _$FavoriteModelFromJson(json);
//   Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
// }

// class FavoriteDate {
//   int id;
//   String title;
//   String image;
//   int duration;
//   @JsonKey(name: 'rating_average')
//   int ratingAverage;

//   FavoriteDate({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.duration,
//     required this.ratingAverage,
//   });
//   factory FavoriteDate.fromJson(Map<String, dynamic> json) =>
//       _$FavoriteDateFromJson(json);
//   Map<String, dynamic> toJson() => _$FavoriteDateToJson(this);
// }
