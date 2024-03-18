import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key,
      required this.userNumber,
      required this.userEmail,
      required this.image});
  final String userNumber;
  final String userEmail;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            Text(userNumber),
            Text(userEmail),
          ],
        ),
      ),
    );
  }
}
