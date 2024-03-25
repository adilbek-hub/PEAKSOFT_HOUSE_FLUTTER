import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Random random = Random();
  int firstDice1 = 1;
  int secondDice2 = 5;

  void activing() {
    setState(() {
      firstDice1 = random.nextInt(6) + 1;
      secondDice2 = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Тапшырма 5'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (firstDice1 == 6 && secondDice2 == 6) Text('Ты СУПЕР'),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset('assets/dice$firstDice1.png'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Image.asset('assets/dice$secondDice2.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                activing();
              },
              icon: Icon(Icons.tab),
              label: Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
