class ComparModel {
  final String image;
  final String title;
  final String time;
  final String subTitle;
  ComparModel({
    required this.image,
    required this.title,
    required this.time,
    required this.subTitle,
  });
}

List<ComparModel> comparList = [
  ComparModel(
    image: "assets/images/travel.png",
    title: "Travel",
    time: "7:00 AM - 11:00 AM",
    subTitle: "Enjoy a romantic evening.",
  ),
  ComparModel(
    image: "assets/images/travel.png",
    title: "Travel",
    time: "7:00 AM - 11:00 AM",
    subTitle: "Enjoy a romantic evening.",
  ),
  ComparModel(
    image: "assets/images/travel.png",
    title: "Travel",
    time: "7:00 AM - 11:00 AM",
    subTitle: "Enjoy a romantic evening.",
  ),
];
