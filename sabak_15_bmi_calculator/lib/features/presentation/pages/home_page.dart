import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/widgets/calculate_button.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/widgets/height_card.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/widgets/male_female_card.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/widgets/weight_age_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 180;
  int weight = 60;
  int age = 25;
  bool isMale = false;
  void maleFemaleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Card(
          shadowColor: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          color: const Color(0xff0b0120),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Card(
                  color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Ден соолук индекси ( BMI)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Жыйынтык', style: AppTextStyles.heighStyle),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 58,
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Нормалдуу',
                            style: TextStyle(
                              color: Color(0xff08E82C),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          const Text(
                            '24.2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 80,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const Text(
                            'Сиздин дене салмагыңыз нормалдуу. Азаматсыз!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          LoadingAnimationWidget.flickr(
                            size: 30,
                            leftDotColor: Colors.white,
                            rightDotColor: Colors.red,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize:
                              Size(MediaQuery.of(context).size.width, 35),
                        ),
                        onPressed: () {},
                        child: const Text('Кайра эсепте',
                            style: AppTextStyles.bodyStyle),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );

    return Scaffold(
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final result = weight / ((height / 100) * (height / 100));
          if (result < 18.5 && result > 0) {
            print('салмактын жоктугу');
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Салмактын жоктугу'),
                    ));
          } else if (result > 18.5 && result < 24.9) {
            print('Нормалдуу');
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Нормалдуу'),
                    ));
          } else if (result > 25 && result < 30) {
            print('Ашыкча салмак');
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Ашыкча салмак'),
                    ));
          } else if (result > 30 && result < 35) {
            print('Семирүү');
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Семирүү'),
                    ));
          } else {
            print('Ден соолукту караңыз');
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('Ден соолукту караңыз'),
                    ));
          }
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemaleCard(
                  text: 'male',
                  icon: Icons.male,
                  color: isMale ? Colors.white : Colors.red,
                  onTap: () => maleFemaleFun(),
                ),
                MaleFemaleCard(
                  text: 'female',
                  icon: Icons.female,
                  color: isMale ? Colors.red : Colors.white,
                  onTap: () => maleFemaleFun(),
                ),
              ],
            ),
            HeightCard(
              text: height.toString(),
              widget: Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white24,
                  thumbColor: Colors.red,
                  min: 0,
                  max: 300,
                  value: height.toDouble(),
                  onChanged: (value) {
                    setState(() {
                      height = value.toInt();
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeightAgeCard(
                  jazuu: 'weight',
                  kemituuBaskychy: () => setState(() => weight--),
                  koshuuBaskychy: () => setState(() => weight++),
                  text: weight.toString(),
                ),
                WeightAgeCard(
                  jazuu: 'age',
                  kemituuBaskychy: () => setState(() => age--),
                  koshuuBaskychy: () => setState(() => age++),
                  text: age.toString(),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: myAppBAr(),
    );
  }
}

AppBar myAppBAr() {
  return AppBar(
    centerTitle: true,
    title: const Text(
      'BMI CALCULATOR',
      style: AppTextStyles.heighStyle,
    ),
  );
}
