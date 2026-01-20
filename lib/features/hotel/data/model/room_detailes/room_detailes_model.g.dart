// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detailes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomDetailesModelResponse _$RoomDetailesModelResponseFromJson(
  Map<String, dynamic> json,
) => RoomDetailesModelResponse(
  data: RoomsData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$RoomDetailesModelResponseToJson(
  RoomDetailesModelResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'status': instance.status,
};
