
import 'package:json_annotation/json_annotation.dart';
part "rooms_data.g.dart";
@JsonSerializable()
class RoomsData {
  final int id;
  final String name;
  final String description;
  final int area;
  final int occupancy;
  @JsonKey(name: "price_per_night")
  final double pricePerNight;
  final bool refundable;
  final HotelModel hotel;
  final List<String> images;
  RoomsData({
    required this.id,
    required this.name,
    required this.description,
    required this.area,
    required this.occupancy,
    required this.pricePerNight,
    required this.refundable,
    required this.hotel,
    required this.images,
  });
  factory RoomsData.fromJson(Map<String, dynamic> json) =>
      _$RoomsDataFromJson(json);
  Map<String, dynamic> toJson() => _$RoomsDataToJson(this);
}

@JsonSerializable()
class HotelModel {
  @JsonKey(name: "hotel_id")
  final int hotelId;
  final String name;
  final String location;
  HotelModel({
    required this.hotelId,
    required this.name,
    required this.location,
  });
  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelModelToJson(this);
}