class BookingEntity {
  final int id;
  final String paymentStatus;
  final String bookingStatus;
  final String totalAmount;
  final String bookableType;
  final String userName;
  final String userEmail;
  final int quantity;
  final String pricePaid;
  final Map<String, dynamic> additionalInfo;

  BookingEntity({
    required this.id,
    required this.paymentStatus,
    required this.bookingStatus,
    required this.totalAmount,
    required this.bookableType,
    required this.userName,
    required this.userEmail,
    required this.quantity,
    required this.pricePaid,
    required this.additionalInfo,
  });
}
