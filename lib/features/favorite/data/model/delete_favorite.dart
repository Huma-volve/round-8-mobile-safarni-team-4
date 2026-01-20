import 'package:json_annotation/json_annotation.dart';
part "delete_favorite.g.dart";
@JsonSerializable()
class DeleteFavorite {
  final String status;
  final String message;

  DeleteFavorite({required this.status, required this.message});
  factory DeleteFavorite.fromJson(Map<String, dynamic> json) =>
      _$DeleteFavoriteFromJson(json);
  Map<String, dynamic> toJson() => _$DeleteFavoriteToJson(this);
}
