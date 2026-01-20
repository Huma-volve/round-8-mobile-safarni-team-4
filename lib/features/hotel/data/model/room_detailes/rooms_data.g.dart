// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsData _$RoomsDataFromJson(Map<String, dynamic> json) => RoomsData(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  area: (json['area'] as num).toInt(),
  occupancy: (json['occupancy'] as num).toInt(),
  pricePerNight: (json['price_per_night'] as num).toDouble(),
  refundable: json['refundable'] as bool,
  hotel: HotelModel.fromJson(json['hotel'] as Map<String, dynamic>),
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  bedNumber: (json['bed_number'] as num).toInt(),
);

Map<String, dynamic> _$RoomsDataToJson(RoomsData instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'area': instance.area,
  'occupancy': instance.occupancy,
  'bed_number': instance.bedNumber,
  'price_per_night': instance.pricePerNight,
  'refundable': instance.refundable,
  'hotel': instance.hotel,
  'images': instance.images,
};

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) => HotelModel(
  hotelId: (json['hotel_id'] as num).toInt(),
  name: json['name'] as String,
  location: json['location'] as String,
);

Map<String, dynamic> _$HotelModelToJson(HotelModel instance) =>
    <String, dynamic>{
      'hotel_id': instance.hotelId,
      'name': instance.name,
      'location': instance.location,
    };
