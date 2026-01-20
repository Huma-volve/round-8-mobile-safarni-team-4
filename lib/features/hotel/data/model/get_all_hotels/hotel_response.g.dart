// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelResponse _$HotelResponseFromJson(Map<String, dynamic> json) =>
    HotelResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
      status: json['status'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$HotelResponseToJson(HotelResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
      'status': instance.status,
      'message': instance.message,
    };
