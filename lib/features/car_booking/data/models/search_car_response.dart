import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/search_car_response_entity.dart';


part 'search_car_response.g.dart';

@JsonSerializable()
class SearchCarResponse {
  @JsonKey(name: "data")
  final List<Car>? data;

  SearchCarResponse({this.data});

  factory SearchCarResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchCarResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SearchCarResponseToJson(this);
  }

  SearchCarResponseEntity toEntity() {
    return SearchCarResponseEntity(
      data: data?.map((e) => e.toEntity()).toList(),
    );
  }
}

@JsonSerializable()
class Car {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "brand")
  final String? brand;
  @JsonKey(name: "model")
  final String? model;
  @JsonKey(name: "model_year")
  final String? modelYear;
  @JsonKey(name: "vehicle_class")
  final String? vehicleClass;
  @JsonKey(name: "seat_count")
  final int? seatCount;
  @JsonKey(name: "door_count")
  final int? doorCount;
  @JsonKey(name: "fuel_type")
  final String? fuelType;
  @JsonKey(name: "transmission")
  final String? transmission;
  @JsonKey(name: "luggage_capacity")
  final int? luggageCapacity;
  @JsonKey(name: "has_ac")
  final bool? hasAc;
  @JsonKey(name: "current_location_lat")
  final String? currentLocationLat;
  @JsonKey(name: "current_location_lng")
  final String? currentLocationLng;
  @JsonKey(name: "location")
  final String? location;
  @JsonKey(name: "features")
  final Features? features;
  @JsonKey(name: "is_available")
  final bool? isAvailable;
  @JsonKey(name: "category")
  final String? category;
  @JsonKey(name: "images")
  final List<Images>? images;

  Car({
    this.id,
    this.brand,
    this.model,
    this.modelYear,
    this.vehicleClass,
    this.seatCount,
    this.doorCount,
    this.fuelType,
    this.transmission,
    this.luggageCapacity,
    this.hasAc,
    this.currentLocationLat,
    this.currentLocationLng,
    this.location,
    this.features,
    this.isAvailable,
    this.category,
    this.images,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return _$CarFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CarToJson(this);
  }

  CarEntity toEntity() {
    return CarEntity(
      id: id,
      brand: brand,
      model: model,
      modelYear: modelYear,
      category: category,
      vehicleClass: vehicleClass,
      seatCount: seatCount,
      doorCount: doorCount,
      fuelType: fuelType,
      transmission: transmission,
      luggageCapacity: luggageCapacity,
      hasAc: hasAc,
      currentLocationLat: currentLocationLat,
      currentLocationLng: currentLocationLng,
      feature: features?.toEntity(),
      images: images?.map((e) => e.toEntity()).toList(),
      isAvailable: isAvailable,
      location: location,
    );
  }
}

@JsonSerializable()
class Features {
  @JsonKey(name: "bluetooth")
  final bool? bluetooth;
  @JsonKey(name: "navigation")
  final bool? navigation;
  @JsonKey(name: "sunroof")
  final bool? sunroof;
  @JsonKey(name: "leather_seats")
  final bool? leatherSeats;
  @JsonKey(name: "backup_camera")
  final bool? backupCamera;
  @JsonKey(name: "usb_ports")
  final int? usbPorts;
  @JsonKey(name: "cruise_control")
  final bool? cruiseControl;
  @JsonKey(name: "parking_sensors")
  final bool? parkingSensors;
  @JsonKey(name: "lane_assist")
  final bool? laneAssist;
  @JsonKey(name: "blind_spot_monitor")
  final bool? blindSpotMonitor;

  Features({
    this.bluetooth,
    this.navigation,
    this.sunroof,
    this.leatherSeats,
    this.backupCamera,
    this.usbPorts,
    this.cruiseControl,
    this.parkingSensors,
    this.laneAssist,
    this.blindSpotMonitor,
  });

  factory Features.fromJson(Map<String, dynamic> json) {
    return _$FeaturesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$FeaturesToJson(this);
  }

  FeatureEntity toEntity() {
    return FeatureEntity(
      bluetooth: bluetooth,
      navigation: navigation,
      sunroof: sunroof,
      leatherSeats: leatherSeats,
      backupCamera: backupCamera,
      usbPorts: usbPorts,
      cruiseControl: cruiseControl,
      parkingSensors: parkingSensors,
      laneAssist: laneAssist,
      blindSpotMonitor: blindSpotMonitor,
    );
  }
}

@JsonSerializable()
class Images {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "url")
  final String? url;

  Images({this.id, this.url});

  factory Images.fromJson(Map<String, dynamic> json) {
    return _$ImagesFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ImagesToJson(this);
  }

  ImageEntity toEntity() {
    return ImageEntity(id: id, url: url);
  }
}
