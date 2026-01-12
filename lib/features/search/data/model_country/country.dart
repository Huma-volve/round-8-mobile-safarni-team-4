class CountryModel {
  final String name;
  final String description;
  final String iconPath;

  CountryModel({
    required this.name,
    required this.description,
    required this.iconPath,
  });
}

// داتا تجريبية بناءً على الصورة
List<CountryModel> allCountries = [
  CountryModel(
    name: "Paris",
    description: "City of arts",
    iconPath: "assets/icon_country/eiffel-tower-1188609.svg",
  ),
  CountryModel(
    name: "Rome",
    description: "History lives here",
    iconPath: "assets/icon_country/rome-over-coliseum-1188581.svg",
  ),
  CountryModel(
    name: "Rio De Janeiro",
    description: "Joy shines here",
    iconPath: "assets/icon_country/rio de.svg",
  ),
  CountryModel(
    name: "Dubai",
    description: "Dream rise here",
    iconPath: "assets/icon_country/dubai.svg",
  ),
  CountryModel(
    name: "London",
    description: "City of culture",
    iconPath: "assets/icon_country/london-city-1188600.svg",
  ),
  CountryModel(
    name: "Sydney",
    description: "Vibes soar here",
    iconPath: "assets/icon_country/sydeny.svg",
  ),
  CountryModel(
    name: "Beijing",
    description: "Lives in tradition",
    iconPath: "assets/icon_country/beijing.svg",
  ),
  CountryModel(
    name: "Amsterdam",
    description: "City of Flowers",
    iconPath: "assets/icon_country/amsterdam-1188536.svg",
  ),
  CountryModel(
    name: "Berlin",
    description: "City of arts",
    iconPath: "assets/icon_country/berlin.svg",
  ),
  CountryModel(
    name: "Ankara",
    description: "City of arts",
    iconPath: "assets/icon_country/ankara-1188532.svg",
  ),
];
