import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 80.0,
        color: Colors.red,
        child: const Center(
          child: Text(
            'CALCULATOR',
            style: AppTextStyles.heighStyle,
          ),
        ),
      ),
    );
  }
}
