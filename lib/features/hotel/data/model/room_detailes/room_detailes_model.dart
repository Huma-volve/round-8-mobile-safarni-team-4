import 'package:json_annotation/json_annotation.dart';
import 'package:round_8_mobile_safarni_team4/features/hotel/data/model/room_detailes/rooms_data.dart';
part "room_detailes_model.g.dart";

@JsonSerializable()
class RoomDetailesModelResponse {
  final RoomsData data;
  final String message;
  final String status;
  RoomDetailesModelResponse({
    required this.data,
    required this.message,
    required this.status,
  });
  factory RoomDetailesModelResponse.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailesModelResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RoomDetailesModelResponseToJson(this);
}




