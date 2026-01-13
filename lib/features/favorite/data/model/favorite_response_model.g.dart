// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteResponseModel _$FavoriteResponseModelFromJson(
  Map<String, dynamic> json,
) => FavoriteResponseModel(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => FavoriteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$FavoriteResponseModelToJson(
  FavoriteResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'status': instance.status,
  'message': instance.message,
};

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    FavoriteModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
      duration: (json['duration'] as num).toInt(),
      ratingAverage: (json['rating_average'] as num).toInt(),
    );

Map<String, dynamic> _$FavoriteModelToJson(FavoriteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'duration': instance.duration,
      'rating_average': instance.ratingAverage,
    };
