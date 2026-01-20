// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_available_rooms_model_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelAvailableRoomsResponseModel _$HotelAvailableRoomsResponseModelFromJson(
  Map<String, dynamic> json,
) => HotelAvailableRoomsResponseModel(
  data: HotelAvailableRoomsModel.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$HotelAvailableRoomsResponseModelToJson(
  HotelAvailableRoomsResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'status': instance.status,
  'message': instance.message,
};
