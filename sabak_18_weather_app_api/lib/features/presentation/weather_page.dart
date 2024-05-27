import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak_18_weather_app_api/features/data/weather_repo.dart';
import 'package:sabak_18_weather_app_api/features/presentation/search_setting_widget.dart';
import 'package:sabak_18_weather_app_api/features/presentation/widgets/city_name_date_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool isTrue = true;
  double scroll = 0;
  WeatherRepo? weatherRepo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    weatherRepo = WeatherRepo();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
              future: weatherRepo?.fetchDataWithDio(),
              builder: (context, sn) {
                if (sn.hasError) {
                  return Center(
                    child: Text(
                      sn.error.toString(),
                    ),
                  );
                } else if (sn.hasData) {
                  double temp = sn.data!.temp - 273.15;

                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 27.6),
                          child: Column(
                            children: [
                              const SearchSettingWidget(),
                              const SizedBox(height: 22.42),
                              SityNameDateWidget(
                                name: sn.data!.name,
                              ),
                              TemperatureViewWidget(
                                text: temp.toStringAsFixed(0),
                                main: sn.data!.main,
                                icon:
                                    'https://openweathermap.org/img/wn/${sn.data!.icon}@4x.png',
                              ),
                              CardWidget(
                                image: 'assets/svg_images/humidity.svg',
                                text: '${sn.data!.wind} km/h',
                                text2: 'wind',
                              ),
                              CardWidget(
                                image: 'assets/svg_images/wind.svg',
                                text: '${sn.data!.humidity} %',
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
                                  activeTickMarkColor: Colors.white,
                                  inactiveTickMarkColor: Colors.grey,
                                  thumbColor: Colors.red,
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
                                            'https://openweathermap.org/img/wn/${sn.data!.icon}@4x.png',
                                            fit: BoxFit.cover,
                                          ),
                                          Text('${temp.toStringAsFixed(0)}°C'),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        color: Color(0xff303345),
                        fontSize: 74.17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      " °C",
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 27.7,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
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
