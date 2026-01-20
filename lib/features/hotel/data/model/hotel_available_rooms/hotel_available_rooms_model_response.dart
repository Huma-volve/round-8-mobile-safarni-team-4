import 'package:json_annotation/json_annotation.dart';

import 'hotel_available_rooms_model.dart';

part 'hotel_available_rooms_model_response.g.dart';

@JsonSerializable()
class HotelAvailableRoomsResponseModel {
  final HotelAvailableRoomsModel data;
  final String status;
  final String message;

  HotelAvailableRoomsResponseModel({
    required this.data,
    required this.status,
    required this.message,
  });

  factory HotelAvailableRoomsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HotelAvailableRoomsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelAvailableRoomsResponseModelToJson(this);
}
