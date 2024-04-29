import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';
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
      appBar: myAppBAr(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaleFemaleCard(),
                MaleFemaleCard(),
              ],
            ),
            HeightCard(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeightAgeCard(),
                WeightAgeCard(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.red,
      child: const Center(
        child: Text(
          'CALCULATOR',
          style: AppTextStyles.heighStyle,
        ),
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
