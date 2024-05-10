import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/domain/my_dialog.dart';
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

    return Scaffold(
      appBar: myAppBAr(),
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
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final result = weight / ((height / 100) * (height / 100));
          if (result < 18.5 && result > 0) {
            print('салмактын жоктугу');
            showMyDialog(
                context, 'салмактын жоктугу', result.roundToDouble(), width);
          } else if (result > 18.5 && result < 24.9) {
            print('Нормалдуу');
            showMyDialog(context, 'Нормалдуу', result.roundToDouble(), width);
          } else if (result > 25 && result < 30) {
            print('Ашыкча салмак');
            showMyDialog(
                context, 'Ашыкча салмак', result.roundToDouble(), width);
          } else if (result > 30 && result < 35) {
            print('Семирүү');
            showMyDialog(context, 'Семирүү', result.roundToDouble(), width);
          } else {
            print('Ден соолукту караңыз');
            showMyDialog(
                context, 'Ден соолукту караңыз', result.roundToDouble(), width);
          }
        },
      ),
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
