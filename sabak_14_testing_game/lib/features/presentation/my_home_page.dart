import 'package:flutter/material.dart';
import 'package:sabak_14_testing_game/features/data/model/test_model.dart';
import 'package:sabak_14_testing_game/features/presentation/detail_student_page.dart';
import 'package:sabak_14_testing_game/features/presentation/uson_st_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void nextStudents() {
    if (students[0] == student_1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return AsanStudentPage(
              student: students,
            );
          },
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return UsonStudentPage(
              student: students,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Студенттердин тизмеси'),
      ),
      body: GridView.builder(
        itemCount: students.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              nextStudents();
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.network(
                      students[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    students[index].name,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
