// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'package:sabak_18_weather_app_api/features/data/model.dart';

// class WeatherRepo {
// //1 Серверден маалыматты алып келүү үчүн асинхрондуу функция түзүү
//   Future<WeatherModel?> fetchDataWithDio() async {
// //2 DIO пакетиндеги get методун колдонуу менен маалыматты алып келүү
//     final response = await Dio().get(
//         'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
// //3 response ко келген маалыматтын жоо жайын текшерүү
//     if (response.statusCode == 200) {
//       final weather = WeatherModel(
//         id: response.data['weather'][0]['id'],
//         main: response.data['weather'][0]['main'],
//         description: response.data['weather'][0]['description'],
//         icon: response.data['weather'][0]['icon'],
//         temp: response.data['main']['temp'],
//         name: response.data['name'],
//         wind: response.data['wind']['speed'],
//         humidity: response.data['main']['humidity'],
//       );

//       return weather;
//     }
//     return null;
//   }

//   ////////////////////////////////////////
//   Future<void> fetchDataWithHttp() async {
//     final response = await http.get(Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?q=bishkek&appid=41aa18abb8974c0ea27098038f6feb1b'));
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       print(response.body);
//     }
//   }
// }
