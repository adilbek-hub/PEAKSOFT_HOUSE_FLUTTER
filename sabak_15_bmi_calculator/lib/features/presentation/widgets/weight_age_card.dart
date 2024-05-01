import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';

class WeightAgeCard extends StatelessWidget {
  const WeightAgeCard({
    super.key,
    required this.jazuu,
    this.koshuuBaskychy,
    this.kemituuBaskychy,
  });
  final String jazuu;
  final void Function()? koshuuBaskychy;
  final void Function()? kemituuBaskychy;
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
            Text(
              jazuu.toUpperCase(),
              style: AppTextStyles.bodyStyle,
            ),
            const Text(
              '60',
              style: AppTextStyles.numStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: kemituuBaskychy,
                  icon: const Icon(
                    Icons.remove_circle,
                    color: Color(0xff5C5B5B),
                    size: 45,
                  ),
                ),
                IconButton(
                  onPressed: koshuuBaskychy,
                  icon: const Icon(
                    Icons.add_circle,
                    color: Color(0xff5C5B5B),
                    size: 45,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
