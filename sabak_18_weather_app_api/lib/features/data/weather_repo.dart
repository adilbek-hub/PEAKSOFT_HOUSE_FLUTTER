import 'package:http/http.dart' as http;
import 'package:sabak_18_weather_app_api/features/data/model.dart';

class WeatherRepo {
//1 Серверден маалыматты алып келүү үчүн фсинхрондуу функция түзүү
  Future<WeatherModel?> fetchData() async {
//2 HTTP пакетиндеги get методун колдонуу менен маалыматты алып келүү
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek&appid=41aa18abb8974c0ea27098038f6feb1b'));
//3 response ко келген маалыматтын жоо жайын текшерүү
    if (response.statusCode == 200) {
      final data = response.body;
      final weather = weatherModelFromJson(data);
      return weather;
    } else {
      return null;
    }
  }
}
