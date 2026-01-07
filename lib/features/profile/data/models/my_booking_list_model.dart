import 'package:round_8_mobile_safarni_team4/core/constants/assets_paths.dart';

class MyBookingListModel {
  final String categoryName;
  final String categoryImage;

  static List<MyBookingListModel> myBookingCategoryList = [
    MyBookingListModel(
      categoryName: 'Flight',
      categoryImage: AssetsPaths.flightIcon,
    ),
    MyBookingListModel(
      categoryName: 'Cars',
      categoryImage: AssetsPaths.carIcon,
    ),
    MyBookingListModel(
      categoryName: 'tours',
      categoryImage: AssetsPaths.tourIcon,
    ),
    MyBookingListModel(
      categoryName: 'Hotel',
      categoryImage: AssetsPaths.hotelIcon,
    ),
  ];

  MyBookingListModel({required this.categoryName, required this.categoryImage});
}
