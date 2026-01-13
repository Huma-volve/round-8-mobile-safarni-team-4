class Tours {
  final int id;
  final String title;
  final String? type;
  final String location;
  final String image;
  final double ratingAverage;
  final String price;

  Tours({
    required this.id,
    required this.title,
    this.type,
    required this.location,
    required this.image,
    required this.ratingAverage,
    required this.price,
  });

  factory Tours.fromJson(Map<String, dynamic> json) {
    return Tours(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      location: json['location'],
      image: json['image'],
      // الـ API يرسل الـ rating أحياناً كـ int أو double، لذا نستخدم toDouble
      ratingAverage: (json['rating_average'] as num).toDouble(),
      price: json['price'],
    );
  }
}