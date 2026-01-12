import 'package:json_annotation/json_annotation.dart';

part 'hotel_model.g.dart';

@JsonSerializable()
class HotelModel {
  final int id;
  final String name;
  final String location;

  @JsonKey(name: 'content_info')
  final String contentInfo;

  final double rating;
  final String image;

  HotelModel({
    required this.id,
    required this.name,
    required this.location,
    required this.contentInfo,
    required this.rating,
    required this.image,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelModelToJson(this);
}
