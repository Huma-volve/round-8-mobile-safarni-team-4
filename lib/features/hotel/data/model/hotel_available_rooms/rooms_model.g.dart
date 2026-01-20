// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsModel _$RoomsModelFromJson(Map<String, dynamic> json) => RoomsModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => RoomItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$RoomsModelToJson(RoomsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
    };

RoomItemModel _$RoomItemModelFromJson(Map<String, dynamic> json) =>
    RoomItemModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      pricePerNight: (json['price_per_night'] as num).toDouble(),
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RoomItemModelToJson(RoomItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price_per_night': instance.pricePerNight,
      'images': instance.images,
    };
