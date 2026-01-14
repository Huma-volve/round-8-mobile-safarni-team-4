import 'package:round_8_mobile_safarni_team4/features/profile/domain/entities/booking_entity.dart';

class BookingModel extends BookingEntity {
  BookingModel({
    required super.id,
    required super.paymentStatus,
    required super.bookingStatus,
    required super.totalAmount,
    required super.bookableType,
    required super.userName,
    required super.userEmail,
    required super.quantity,
    required super.pricePaid,
    required super.additionalInfo,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      id: json['id'] as int,
      paymentStatus: json['payment_status']?.toString() ?? '',
      bookingStatus: json['booking_status']?.toString() ?? '',
      totalAmount: json['total_amount']?.toString() ?? '',
      bookableType: json['bookable_type']?.toString() ?? '',
      userName: json['user_name']?.toString() ?? '',
      userEmail: json['user_email']?.toString() ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
      pricePaid: json['price_paid']?.toString() ?? '',
      additionalInfo: _parseAdditionalInfo(json['additional_info']),
    );
  }

  static Map<String, dynamic> _parseAdditionalInfo(dynamic json) {
    if (json is Map<String, dynamic>) {
      return json;
    }
    if (json is List) {
      return {'items': json};
    }
    return {};
  }

  static List<BookingEntity> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((e) => BookingModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
