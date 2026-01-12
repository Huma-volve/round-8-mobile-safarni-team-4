class CategoryModel {
  final String title;
  final String imagePath;

  CategoryModel({required this.title, required this.imagePath});
}

// قائمة البيانات (داتا تجريبية)
List<CategoryModel> categories = [
  CategoryModel(title: "Flight", imagePath: "assets/category/flight.png"),
  CategoryModel(title: "Cars", imagePath: "assets/category/cars.png"),
  CategoryModel(title: "Tours", imagePath: "assets/category/tours.png"),
  CategoryModel(title: "Hotel", imagePath: "assets/category/hotel.png"),
];
