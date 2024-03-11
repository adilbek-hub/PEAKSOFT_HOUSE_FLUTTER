import 'package:flutter/material.dart';
import 'package:sabak_4_counter_app_second_page/third_page.dart';

class SecondPage extends StatelessWidget {
  final int secontCounter;

  const SecondPage({super.key, required this.secontCounter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$secontCounter',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ThirdPage(
                      counterThirdPage: secontCounter,
                    )),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
