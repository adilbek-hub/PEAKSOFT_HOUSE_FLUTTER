class WeatherModel {
  WeatherModel({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
    required this.temp,
    required this.name,
    required this.wind,
    required this.humidity,
  });

  final int id;
  final String main;
  final String description;
  final String icon;
  final double temp;
  final String name;
  final double wind;
  final int humidity;
}
