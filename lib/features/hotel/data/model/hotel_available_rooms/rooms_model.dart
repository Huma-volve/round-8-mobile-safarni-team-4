import 'package:json_annotation/json_annotation.dart';
part 'rooms_model.g.dart';
@JsonSerializable()
class RoomsModel {
  final List<RoomItemModel> data;
  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  @JsonKey(name: 'per_page')
  final int perPage;
  final int total;

  RoomsModel({
    required this.data,
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory RoomsModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomsModelToJson(this);
}

@JsonSerializable()
class RoomItemModel {
  final int id;
  final String name;
  @JsonKey(name: 'price_per_night')
  final double pricePerNight;
  final List<String> images;

  RoomItemModel({
    required this.id,
    required this.name,
    required this.pricePerNight,
    required this.images,
  });

  factory RoomItemModel.fromJson(Map<String, dynamic> json) =>
      _$RoomItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomItemModelToJson(this);
}
