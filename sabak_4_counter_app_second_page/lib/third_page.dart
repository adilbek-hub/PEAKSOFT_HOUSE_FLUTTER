import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    super.key,
    required this.counterThirdPage,
  });
  final int counterThirdPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterThirdPage.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
