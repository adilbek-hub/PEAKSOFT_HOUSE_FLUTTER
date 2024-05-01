import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CalculateButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaleFemaleCard(
                  text: 'male',
                  icon: Icons.male,
                ),
                MaleFemaleCard(
                  text: 'female',
                  icon: Icons.female,
                ),
              ],
            ),
            const HeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeightAgeCard(
                  jazuu: 'weight',
                  kemituuBaskychy: () {},
                  koshuuBaskychy: () {},
                ),
                WeightAgeCard(
                  jazuu: 'age',
                  kemituuBaskychy: () {},
                  koshuuBaskychy: () {},
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
