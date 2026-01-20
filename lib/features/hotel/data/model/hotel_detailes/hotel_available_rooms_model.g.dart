// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_available_rooms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelAvailableRoomsModel _$HotelAvailableRoomsModelFromJson(
  Map<String, dynamic> json,
) => HotelAvailableRoomsModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  location: json['location'] as String,
  image: json['image'] as String,
  lat: json['lat'] as String,
  lng: json['lng'] as String,
  rating: json['rating'] as String,
  contentInfo: json['content_info'] as String,
  description: json['description'] as String,
  amenities: json['amenities'],
  rooms: RoomsModel.fromJson(json['rooms'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HotelAvailableRoomsModelToJson(
  HotelAvailableRoomsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'location': instance.location,
  'image': instance.image,
  'lat': instance.lat,
  'lng': instance.lng,
  'rating': instance.rating,
  'content_info': instance.contentInfo,
  'description': instance.description,
  'amenities': instance.amenities,
  'rooms': instance.rooms,
};
