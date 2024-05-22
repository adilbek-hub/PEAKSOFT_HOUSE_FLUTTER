import 'package:flutter/material.dart';

class SityNameDateWidget extends StatelessWidget {
  const SityNameDateWidget({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: const TextStyle(
              color: Color(0xff313341),
              fontSize: 34.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Tue, Jun 30',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 15.52,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
