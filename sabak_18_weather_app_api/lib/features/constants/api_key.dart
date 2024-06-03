class ApiKey {
  static const api =
      'https://api.openweathermap.org/data/2.5/weather?q=moscow&appid=$apikey';
  static const apikey = '41aa18abb8974c0ea27098038f6feb1b';
  static cityName(String cityName) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey';
}
