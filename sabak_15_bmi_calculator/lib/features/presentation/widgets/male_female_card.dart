import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator/features/presentation/constants/app_text_styles.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final Color color;

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
            IconButton(
              onPressed: onTap,
              icon: Icon(
                icon,
                size: 70,
                color: color,
              ),
            ),
            Text(
              text.toUpperCase(),
              style: AppTextStyles.bodyStyle,
            ),
          ],
        ),
      ),
    );
  }
}
