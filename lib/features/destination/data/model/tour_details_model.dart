class TourDetailsModel {
  final int id;
  final String title;
  final int duration;
  final String visitSeason;
  final List<String> activities;
  final String recommendation;
  final List<String> images;
  final List<ReviewModel> reviews;
  final num ratingAverage;
  final int reviewsCount;
  final String price;

  TourDetailsModel({
    required this.id, required this.title, required this.duration,
    required this.visitSeason, required this.activities, required this.recommendation,
    required this.images, required this.reviews, required this.ratingAverage,
    required this.reviewsCount, required this.price,
  });

  factory TourDetailsModel.fromJson(Map<String, dynamic> json) {
    return TourDetailsModel(
      id: json['id'],
      title: json['title'],
      duration: json['duration'],
      visitSeason: json['visit_season'],
      activities: List<String>.from(json['activities']),
      recommendation: json['recommendation'],
      images: List<String>.from(json['images']),
      ratingAverage: json['rating_average'],
      reviewsCount: json['reviews_count'],
      price: json['price'],
      reviews: (json['reviews'] as List).map((e) => ReviewModel.fromJson(e)).toList(),
    );
  }
}

class ReviewModel {
  final String user;
  final int rating;
  final String comment;

  ReviewModel({required this.user, required this.rating, required this.comment});

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      user: json['user'],
      rating: json['rating'],
      comment: json['comment'],
    );
  }
}