import 'package:flutter/material.dart';
import 'package:sabak_14_testing_game/features/data/model/test_model.dart';

class AsanStudentPage extends StatelessWidget {
  const AsanStudentPage({super.key, required this.student});
  final List<Students> student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student[0].name),
      ),
    );
  }
}
