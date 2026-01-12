class BottonData {
  final String id; // بنحتاجه عشان الـ API
  final String label;
  final String icon;
  bool isSelected;

  BottonData({
    required this.id,
    required this.label,
    this.isSelected = false,
    required this.icon,
  });
}

List<BottonData> sortOptions = [
  BottonData(id: 'price_low', label: 'Price (Low to High)', icon: ''),
  BottonData(id: 'price_high', label: 'Price (High to Low)', icon: ''),
  BottonData(id: 'deals', label: 'Biggest Deals (Highest Saving)', icon: ''),
  BottonData(id: 'reviewed', label: 'Most Reviewed', icon: ''),
  BottonData(id: 'popular', label: 'Most Popular', icon: ''),
];
List<BottonData> AdevStyle = [
  BottonData(
    id: 'Adventure Travel',
    label: 'Adventure Travel',
    icon: 'assets/icons/adv travel.svg',
  ),
  BottonData(
    id: 'City Breaks',
    label: 'City Breaks',
    icon: 'assets/icons/city break.svg',
  ),
  BottonData(
    id: 'Road Trips',
    label: 'Road Trips',
    icon: 'assets/icons/road trip.svg',
  ),
  BottonData(
    id: 'Water Activity',
    label: 'Water Activity',
    icon: 'assets/icons/water activity.svg',
  ),
];
List<BottonData> Rating = [
  BottonData(id: '1', label: '1', icon: 'assets/icons/s.svg'),
  BottonData(id: '2', label: '2', icon: 'assets/icons/s.svg'),
  BottonData(id: '3', label: '3', icon: 'assets/icons/s.svg'),
  BottonData(id: '4', label: '4', icon: 'assets/icons/s.svg'),
  BottonData(id: '5', label: '5', icon: 'assets/icons/s.svg'),
];
