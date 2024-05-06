import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    required this.text,
    required this.widget,
    super.key,
  });
  final String text;
  final Widget widget;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  text,
                  style: AppTextStyles.numStyle,
                ),
                const Text(
                  'cm',
                  style: AppTextStyles.titleStyle,
                ),
              ],
            ),
            widget,
          ],
        ),
      ),
    );
  }
}
