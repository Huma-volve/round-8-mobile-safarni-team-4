class SearchCarResponseEntity {
  final List<CarEntity>? data;

  const SearchCarResponseEntity({this.data});
}

class CarEntity {
  final int? id;
  final String? brand;
  final String? model;
  final String? modelYear;
  final String? vehicleClass;
  final int? seatCount;
  final int? doorCount;
  final String? fuelType;
  final String? transmission;
  final int? luggageCapacity;
  final bool? hasAc;
  final String? currentLocationLat;
  final String? currentLocationLng;
  final String? location;
  final FeatureEntity? feature;
  final bool? isAvailable;
  final String? category;
  final List<ImageEntity>? images;

  const CarEntity({
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
    this.feature,
    this.isAvailable,
    this.category,
    this.images,
  });
}

class FeatureEntity {
  final bool? bluetooth;
  final bool? navigation;
  final bool? sunroof;
  final bool? leatherSeats;
  final bool? backupCamera;
  final int? usbPorts;
  final bool? cruiseControl;
  final bool? parkingSensors;
  final bool? laneAssist;
  final bool? blindSpotMonitor;

  const FeatureEntity({
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
}

class ImageEntity {
  final int? id;
  final String? url;

  const ImageEntity({this.id, this.url});
}
