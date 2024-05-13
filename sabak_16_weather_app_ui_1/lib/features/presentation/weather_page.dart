import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sabak_16_weather_app_ui_1/features/presentation/search_setting_widget.dart';
import 'package:sabak_16_weather_app_ui_1/features/presentation/widgets/city_name_date_widget.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool isTrue = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: Column(
            children: [
              const SearchSettingWidget(),
              const SizedBox(height: 22.42),
              const SityNameDateWidget(),
              const TemperatureViewWidget(),
              const CardWidget(),
              const CardWidget(),
              const CardWidget(),
              const SizedBox(height: 27.6),
              Column(
                children: [
                  const Row(
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
                  Slider(
                    activeColor: Colors.white,
                    inactiveColor: Colors.white24,
                    thumbColor: Colors.red,
                    min: 0,
                    max: 300,
                    value: 100.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        value.toInt();
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

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
              Card(child: SvgPicture.asset('assets/svg_images/umbrella.svg')),
              const SizedBox(width: 13.8),
              const Text(
                'RainFall',
                style: TextStyle(
                  color: Color(0xff303345),
                  fontSize: 12.7,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Text(
            '3cm',
            style: TextStyle(
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
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/svg_images/cludy.svg"),
        const Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '19',
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 74.17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      " \u2103",
                      style: TextStyle(
                        color: Color(0xff303345),
                        fontSize: 27.7,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Rainy',
                  style: TextStyle(
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
