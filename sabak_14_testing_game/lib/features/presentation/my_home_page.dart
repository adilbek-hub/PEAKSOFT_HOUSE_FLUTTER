import 'package:flutter/material.dart';
import 'package:sabak_14_testing_game/constants/app_text_styles.dart';
import 'package:sabak_14_testing_game/features/data/model/test_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(this.text, {super.key});
  final String text;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  int tuuraJoop = 0;
  int tuuraEmesJoop = 0;
  nextCount() {
    setState(() => count++);
    if (count == testList.length) {
      showTestDialog(context);
      count = 0;
      tuuraJoop = 0;
      tuuraEmesJoop = 0;
    }
    if (testList[count].answer) {
      setState(() {
        tuuraJoop++;
      });
    } else if (testList[count].answer) {
      setState(() {
        tuuraEmesJoop++;
      });
    }
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Row(
          children: [
            Text(tuuraJoop.toString()),
            const Text('/'),
            Text(
              tuuraEmesJoop.toString(),
            ),
          ],
        ),
        content: const Text("Сиздин тест жыйынтыгыңыз"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: const Text("Ok"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                textAlign: TextAlign.center,
                testList[count].question,
                style: AppTextStyles.questionStyle,
              ),
              Column(
                children: [
                  CustomButton(
                    text: 'Туура',
                    backgroundColor: Colors.green,
                    onPressed: () {
                      nextCount();
                    },
                  ),
                  CustomButton(
                    text: 'Туура эмес',
                    backgroundColor: Colors.red,
                    onPressed: () {
                      nextCount();
                    },
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                        5,
                        (index) => const Icon(
                              Icons.done,
                              color: Colors.green,
                            )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        widget.text,
        style: AppTextStyles.titleTextStyle,
      ),
      actions: [
        Container(
          color: const Color.fromARGB(255, 164, 249, 196),
          width: 100,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tuuraEmesJoop.toString(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const VerticalDivider(
                color: Colors.white,
              ),
              Text(
                tuuraJoop.toString(),
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            minimumSize: const Size(333, 70),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyles.trueFalseTextStyle,
        ),
      ),
    );
  }
}
