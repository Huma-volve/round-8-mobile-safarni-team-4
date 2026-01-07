class DataModel {
  DataModel({required this.x, required this.y});
  final double x;
  final double y;
}


final List<DataModel> chartData = [
  DataModel(x: 500, y: 5),

  DataModel(x: 1500, y: 15),
  DataModel(x: 2500, y: 35),
  DataModel(x: 3500, y: 60), // قمة أولى
  DataModel(x: 4500, y: 40),
  DataModel(x: 5500, y: 55), // قمة ثانية
  DataModel(x: 6500, y: 20),
  DataModel(x: 7500, y: 10),
  DataModel(x: 8500, y: 5),
];