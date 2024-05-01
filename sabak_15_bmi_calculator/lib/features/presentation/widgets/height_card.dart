import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 176,
      child: Card(
        shadowColor: Colors.white,
        color: const Color(0xff0b0120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Height'.toUpperCase(),
              style: AppTextStyles.bodyStyle,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  '180',
                  style: AppTextStyles.numStyle,
                ),
                Text(
                  'cm',
                  style: AppTextStyles.titleStyle,
                ),
              ],
            ),
            Slider(min: 0, max: 150, value: 40, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
