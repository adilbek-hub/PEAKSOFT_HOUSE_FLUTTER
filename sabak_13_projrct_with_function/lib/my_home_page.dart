import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // переменный счетчик
  int count = 0;
  // Переменныйды кошуу үчүн функция
  //void тип кайтарбоочу
  // increment функциянын аталышы
  // () функция
  // {} функциянын денеси.
  void increment(int san) {
    //SetState bul build методду чакырат ошондуктан count ++  иштөөсү көзүбүзгө эмулятордон көрүнүп жатат.
    san = count++;
    setState(() {});
  }

  void result() {
    if (count == 5) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Сиздин сан'),
          content: Text(count.toString()),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                increment(count);
                result();
              },
              child: const Text('INCREMENT'),
            )
          ],
        ),
      ),
    );
  }
}
