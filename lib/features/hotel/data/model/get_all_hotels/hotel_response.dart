import 'package:json_annotation/json_annotation.dart';
import 'hotel_model.dart';
import 'links_model.dart';
import 'meta_model.dart';

part 'hotel_response.g.dart';

@JsonSerializable()
class HotelResponse {
  final List<HotelModel> data;
  final LinksModel links;
  final MetaModel meta;
  final String status;
  final String message;

  HotelResponse({
    required this.data,
    required this.links,
    required this.meta,
    required this.status,
    required this.message,
  });

  factory HotelResponse.fromJson(Map<String, dynamic> json) =>
      _$HotelResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HotelResponseToJson(this);
}
