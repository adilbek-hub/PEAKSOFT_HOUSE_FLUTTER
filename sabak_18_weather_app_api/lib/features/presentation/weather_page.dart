import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak_18_weather_app_api/features/constants/api_key.dart';
import 'package:sabak_18_weather_app_api/features/data/model.dart';
import 'package:sabak_18_weather_app_api/features/presentation/city_class.dart';
import 'package:sabak_18_weather_app_api/features/presentation/search_delegate.dart';
import 'package:sabak_18_weather_app_api/features/presentation/widgets/city_name_date_widget.dart';

import 'search_setting_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool isTrue = true;
  double scroll = 0;
  WeatherModel? weatherModel;

  void getCityName([String? cityName]) async {
    final dio = Dio();
    final response = await dio.get(ApiKey.cityName(cityName ?? 'Бишкек'));
    if (response.statusCode == 200) {
      double windSpeed = response.data['wind']['speed'].toDouble();
      weatherModel = WeatherModel(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
        wind: windSpeed,
        humidity: response.data['main']['humidity'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getCityName();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: weatherModel == null
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.6),
                        child: Column(
                          children: [
                            SearchSettingWidget(
                              onTapSearch: () async {
                                showSearch(
                                    context: context,
                                    delegate: CustomSearchDelegate());
                              },
                              onTap: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300,
                                      color: const Color(0xff81d4fa),
                                      child: Center(
                                          child: ListView.builder(
                                        itemCount: cityList.length,
                                        itemBuilder: (context, index) {
                                          final shaar = cityList[index];
                                          return SizedBox(
                                            height: 75,
                                            child: InkWell(
                                              splashColor: Colors.red,
                                              onTap: () {
                                                setState(() {
                                                  weatherModel = null;
                                                });
                                                getCityName(shaar.city);
                                                Navigator.pop(context);
                                              },
                                              child: Card(
                                                color: Colors.white,
                                                child: Center(
                                                  child: ListTile(
                                                    leading: Text(
                                                      shaar.city,
                                                      style: const TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                    title: const Text(
                                                        'Кыргызстан'),
                                                    trailing: SizedBox(
                                                        height: 50,
                                                        width: 50,
                                                        child: CircleAvatar(
                                                          radius: 56,
                                                          backgroundColor:
                                                              const Color(
                                                                  0xff16C4EA),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(
                                                                    8), // Border radius
                                                            child: ClipOval(
                                                                child: Image
                                                                    .network(shaar
                                                                        .emblems)),
                                                          ),
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      )),
                                    );
                                  },
                                );
                                print('hello');
                              },
                            ),
                            const SizedBox(height: 22.42),
                            SityNameDateWidget(
                              name: weatherModel!.name,
                            ),
                            TemperatureViewWidget(
                              text: '${(weatherModel!.temp.toInt()) - 273} °C',
                              main: weatherModel!.main,
                              icon:
                                  'https://openweathermap.org/img/wn/${weatherModel!.icon}@4x.png',
                            ),
                            CardWidget(
                              image: 'assets/svg_images/humidity.svg',
                              text: '${weatherModel!.wind} km/h',
                              text2: 'wind',
                            ),
                            CardWidget(
                              image: 'assets/svg_images/wind.svg',
                              text: '${weatherModel!.humidity} %',
                              text2: 'humidity',
                            ),
                            // CardWidget(
                            //     image: 'assets/svg_images/umbrella.svg',
                            //     text: sn.data!.wind.toString(),
                            //     text2: ''),
                            const SizedBox(height: 27.6),
                            const WeatherDaysWidget(),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                trackHeight: 0.86,
                                thumbShape: SquareThumbShape(thumbRadius: 12.0),
                                thumbColor: Colors.black,
                              ),
                              child: Slider(
                                mouseCursor: MouseCursor.defer,
                                divisions: 2,
                                label: scroll.round().toString(),
                                min: 0,
                                max: 3,
                                value: scroll,
                                onChanged: (value) {
                                  setState(() {
                                    scroll = value;
                                    print("VALUE мааниси: $value");
                                    print("scroll мааниси: $scroll");
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.52,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.62,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(34.8),
                                  child: Container(
                                    width: 55.15,
                                    height: 98.99,
                                    color: Colors.white.withOpacity(0.3),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text('27.05'),
                                        Image.network(
                                          'https://openweathermap.org/img/wn/${weatherModel!.icon}@4x.png',
                                          fit: BoxFit.cover,
                                        ),
                                        const Text('${'dvdvd'}°C'),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                )),
    );
  }
}

class SquareThumbShape extends SliderComponentShape {
  final double thumbRadius;

  SquareThumbShape({this.thumbRadius = 8.0});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Paint paint = Paint()
      ..color = sliderTheme.thumbColor ?? Colors.blue
      ..style = PaintingStyle.fill;

    final Rect thumbRect = Rect.fromCenter(
      center: center,
      width: 17.25,
      height: 5.17,
    );

    context.canvas.drawRect(thumbRect, paint);
  }
}

class WeatherDaysWidget extends StatelessWidget {
  const WeatherDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: Color(0xff313341),
                    fontWeight: FontWeight.w700,
                    fontSize: 13.8,
                  ),
                ),
                SizedBox(
                  width: 20.7,
                ),
                Text(
                  'Tomorrow',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 13.8,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  ' Next 7 Days',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 13.8,
                  ),
                ),
                SizedBox(
                  width: 20.7,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xff000000),
                  size: 10,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.image,
    required this.text,
    required this.text2,
  });
  final String image;
  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
        padding: const EdgeInsets.only(left: 18.97, right: 48.29),
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.32),
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Card(child: SvgPicture.asset(image)),
              const SizedBox(width: 13.8),
              Text(
                text2,
                style: const TextStyle(
                  color: Color(0xff303345),
                  fontSize: 12.7,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xff303345),
              fontSize: 12.7,
              fontWeight: FontWeight.w400,
            ),
          ),
        ]),
      ),
    );
  }
}

class TemperatureViewWidget extends StatelessWidget {
  const TemperatureViewWidget({
    super.key,
    required this.text,
    required this.main,
    required this.icon,
  });
  final String text;
  final String main;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(icon),
        Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Color(0xff303345),
                        fontSize: 50.17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // const Text(
                    //  ,
                    //   style: TextStyle(
                    //     color: Color(0xff303345),
                    //     fontSize: 27.7,
                    //     fontWeight: FontWeight.w800,
                    //   ),
                    // ),
                  ],
                ),
                Text(
                  main,
                  style: const TextStyle(
                    color: Color(0xff303345),
                    fontSize: 24.17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
