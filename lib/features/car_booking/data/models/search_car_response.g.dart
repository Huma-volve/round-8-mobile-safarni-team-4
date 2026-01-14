// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_car_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCarResponse _$SearchCarResponseFromJson(Map<String, dynamic> json) =>
    SearchCarResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchCarResponseToJson(SearchCarResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: (json['id'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      modelYear: json['model_year'] as String?,
      vehicleClass: json['vehicle_class'] as String?,
      seatCount: (json['seat_count'] as num?)?.toInt(),
      doorCount: (json['door_count'] as num?)?.toInt(),
      fuelType: json['fuel_type'] as String?,
      transmission: json['transmission'] as String?,
      luggageCapacity: (json['luggage_capacity'] as num?)?.toInt(),
      hasAc: json['has_ac'] as bool?,
      currentLocationLat: json['current_location_lat'] as String?,
      currentLocationLng: json['current_location_lng'] as String?,
      location: json['location'] as String?,
      features: json['features'] == null
          ? null
          : Features.fromJson(json['features'] as Map<String, dynamic>),
      isAvailable: json['is_available'] as bool?,
      category: json['category'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'model': instance.model,
      'model_year': instance.modelYear,
      'vehicle_class': instance.vehicleClass,
      'seat_count': instance.seatCount,
      'door_count': instance.doorCount,
      'fuel_type': instance.fuelType,
      'transmission': instance.transmission,
      'luggage_capacity': instance.luggageCapacity,
      'has_ac': instance.hasAc,
      'current_location_lat': instance.currentLocationLat,
      'current_location_lng': instance.currentLocationLng,
      'location': instance.location,
      'features': instance.features,
      'is_available': instance.isAvailable,
      'category': instance.category,
      'images': instance.images,
    };

Features _$FeaturesFromJson(Map<String, dynamic> json) => Features(
      bluetooth: json['bluetooth'] as bool?,
      navigation: json['navigation'] as bool?,
      sunroof: json['sunroof'] as bool?,
      leatherSeats: json['leather_seats'] as bool?,
      backupCamera: json['backup_camera'] as bool?,
      usbPorts: (json['usb_ports'] as num?)?.toInt(),
      cruiseControl: json['cruise_control'] as bool?,
      parkingSensors: json['parking_sensors'] as bool?,
      laneAssist: json['lane_assist'] as bool?,
      blindSpotMonitor: json['blind_spot_monitor'] as bool?,
    );

Map<String, dynamic> _$FeaturesToJson(Features instance) => <String, dynamic>{
      'bluetooth': instance.bluetooth,
      'navigation': instance.navigation,
      'sunroof': instance.sunroof,
      'leather_seats': instance.leatherSeats,
      'backup_camera': instance.backupCamera,
      'usb_ports': instance.usbPorts,
      'cruise_control': instance.cruiseControl,
      'parking_sensors': instance.parkingSensors,
      'lane_assist': instance.laneAssist,
      'blind_spot_monitor': instance.blindSpotMonitor,
    };

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      id: (json['id'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
