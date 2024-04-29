import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 177,
      child: Card(
        shadowColor: Colors.white,
        color: const Color(0xff0b0120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.male,
              size: 70,
              color: Colors.white,
            ),
            Text(
              'male'.toUpperCase(),
              style: AppTextStyles.bodyStyle,
            ),
          ],
        ),
      ),
    );
  }
}
