import 'package:json_annotation/json_annotation.dart';
import 'rooms_model.dart';

part 'hotel_available_rooms_model.g.dart';

@JsonSerializable()
class HotelAvailableRoomsModel {
  final int id;
  final String name;
  final String location;
  final String image;
  final String lat;
  final String lng;
  final String rating;
  @JsonKey(name: 'content_info')
  final String contentInfo;
  final String description;
  final dynamic amenities;
  final RoomsModel rooms;

  HotelAvailableRoomsModel({
    required this.id,
    required this.name,
    required this.location,
    required this.image,
    required this.lat,
    required this.lng,
    required this.rating,
    required this.contentInfo,
    required this.description,
    this.amenities,
    required this.rooms,
  });

  factory HotelAvailableRoomsModel.fromJson(Map<String, dynamic> json) =>
      _$HotelAvailableRoomsModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelAvailableRoomsModelToJson(this);
}





